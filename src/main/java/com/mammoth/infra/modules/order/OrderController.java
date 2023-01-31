package com.mammoth.infra.modules.order;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mammoth.infra.modules.basket.Basket;
import com.mammoth.infra.modules.basket.BasketServiceImpl;

@Controller
@RequestMapping(value="/order/")
public class OrderController {
	
	@Autowired
	OrderServiceImpl service;
	@Autowired
	BasketServiceImpl bskservice;
	
	
	@RequestMapping(value="orderList")
	public String orderList() throws Exception {
				
		return "infra/member/user/orderList";
	}
	
	@RequestMapping(value="orderForm")
	public String orderForm(@ModelAttribute("vo") OrderVo vo, @ModelAttribute("dto")Basket bskdto , Order dto, Model model, HttpSession httpSession) throws Exception {
		
		System.out.println("-----------------------List2: " + dto.getLastPrice());
		System.out.println("-----------------------List2: " + bskdto.getLastPrice());
		System.out.println("-----------------------List2-2: " + httpSession.getAttribute("sessLastPrice"));
		
		vo.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		dto.setLastPrice((int)httpSession.getAttribute("sessLastPrice"));
		model.addAttribute("lastPrice", dto.getLastPrice());
		//장바구니에서 주문할때 상품리스트
		List<Order> oderFormList = service.selectList(vo);
		model.addAttribute("oderFormList", oderFormList);
		//회원정보
		Order selectOne = service.selectOne(vo);
		model.addAttribute("item", selectOne);
		//쿠폰 리스트
		List<Order> cuponList = service.cuponList(vo);
		model.addAttribute("cuponList", cuponList);
		
		// 바로구매로 상품리스트 뿌려주기
		List<Order> buyNowList = service.selectList(vo);
		model.addAttribute("oderFormList", buyNowList);
		
		return "infra/member/user/orderForm";
	}
	
	@RequestMapping(value = "checkDel")
	public String memberMultiDele(Basket dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		for(int i = 0; i < dto.getCheckboxSeqArray().length; i++) {
			if(i % 2 == 0) {
				int checkboxSeqArr = dto.getCheckboxSeqArray()[i];
				System.out.println("------------seq :" + checkboxSeqArr);
				dto.setPrSeq(checkboxSeqArr); 
				bskservice.oneDel(dto);
			} else {
				dto.setLastPrice((int)httpSession.getAttribute("sessLastPrice"));
				int price = dto.getLastPrice();	
				int checkboxPriceArr = dto.getCheckboxSeqArray()[i];
				int lastPrice = price - checkboxPriceArr;
				httpSession.setAttribute("sessLastPrice", lastPrice);
			}
		}
		dto.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("dto", dto);

		return "redirect:/order/orderForm";
	}
	
	@RequestMapping(value="orderFormBuyNow")
	public String orderFormBuyNow(Basket dto) throws Exception {
		
		
		
		return "";
	}
	
	@RequestMapping(value="orderInst")
	public String insert(Order dto) throws Exception {
		
		
		return "infra/member/user/orderList";
	}
	
}
