package com.mammoth.infra.modules.order;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

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
	public String memberMultiDele(Basket dto, RedirectAttributes redirectAttributes) throws Exception {

		System.out.println("-=-=--------몇개가 담겨있나? : " + dto.getCheckboxSeqArray().length);
		
		for (int checkboxSeq : dto.getCheckboxSeqArray()) {
			
			if(dto.getCheckboxSeqArray().length % 2 == 1) {
				System.out.println("---------- 무엇인가 :" +checkboxSeq);
				//dto.setPrSeq(checkboxSeq); 
				//bskservice.oneDel(dto);
			} else {
				System.out.println("---------- 얼마인가 :" +checkboxSeq);
				
			}
			
			//for(int i = 0; i < dto.getCheckboxSeqArray().length; i++) {
			//}
		}
		
		
		/*
		 * for (int checkboxSeq : dto.getCheckboxSeqArray()) {
		 * 
		 * if(checkboxSeq % 2 == 1 ) { System.out.println("-----checkboxSeq : "
		 * +checkboxSeq);
		 * 
		 * dto.setPrSeq(checkboxSeq); bskservice.oneDel(dto); } else {
		 * System.out.println("-----가격? : " +checkboxSeq); }
		 * 
		 * }
		 */
		 
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
