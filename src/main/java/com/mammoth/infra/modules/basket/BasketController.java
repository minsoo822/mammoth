package com.mammoth.infra.modules.basket;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mammoth.infra.modules.member.Member;
import com.mammoth.infra.modules.member.MemberServiceImpl;
import com.mammoth.infra.modules.member.MemberVo;
import com.mammoth.infra.modules.order.OrderVo;
@Controller
@RequestMapping(value="/basket/")
public class BasketController {

	@Autowired
	BasketServiceImpl service;
	@Autowired
	MemberServiceImpl mmservice;
	
	
	@RequestMapping(value="basketList")
	public String basketList(@ModelAttribute("dto") Basket dto, Model model, MemberVo vo,HttpSession httpSession) throws Exception {
		/* 회원정보 */
		vo.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		dto.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		Member info = mmservice.selectOne(vo);
		model.addAttribute("info", info);
		/* 장바구니 물품갯수 */
		int selectListCount = service.selectListCount(dto);
		model.addAttribute("selectListCount", selectListCount);
		/* 장바구니 리스트 */
		List<Basket> selectList = service.selectList(dto);
		model.addAttribute("list", selectList);
		
		System.out.println("-----------------------List" + dto.getLastPrice());
		
		return "infra/member/user/basket";
	}
	
	@RequestMapping(value="buyNowList")
	public String buyNowList(Model model, @ModelAttribute("dto")Basket dto, HttpSession httpSession) throws Exception{
		
		List<Basket> buyNowList = service.buyNowList(dto);
		model.addAttribute("oderFormList", buyNowList); 
		
		return "infra/member/user/orderForm";
	}
	
	@RequestMapping(value="oneDel")
	public String oneDel(Basket dto , RedirectAttributes redirectAttributes) throws Exception {
		
		service.oneDel(dto);
		dto.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("dto", dto);
		
		return "redirect:/basket/basketList";
	}
	@RequestMapping(value="allDel")
	public String allDel(Basket dto , RedirectAttributes redirectAttributes) throws Exception {
		
		service.allDel(dto);
		dto.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("vo", dto);
		
		return "redirect:/basket/basketList";
	}
	
	
	@RequestMapping(value = "checkDel")
	public String MultiDele(Basket dto, RedirectAttributes redirectAttributes) throws Exception {

		for (int checkboxSeq : dto.getCheckboxSeqArray()) {
			dto.setPrSeq(checkboxSeq);
			service.oneDel(dto);
		}
		dto.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("dto", dto);

		return "redirect:/basket/basketList";
	}
	@RequestMapping(value = "checkBuy")
	public String MultiBuy(Basket dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

//		for (int checkboxSeq : dto.getCheckboxSeqArray()) {
//			dto.setPrSeq(checkboxSeq);
//			System.out.println("=---------: " + dto.getPrSeq());
//			service.checkBuy(dto);
//		}
		if(dto.getBskSeqs() != null && dto.getBskSeqs().length > 0) {
            
            for(int i=0; i< dto.getBskSeqs().length; i++) {
                dto.setBskAmount(dto.getBskAmounts()[i]);
                dto.setBskSell_Price(dto.getBskSell_Prices()[i]);
                dto.setBskSeq(dto.getBskSeqs()[i]);
                
                service.bskUpdt(dto);
            }
        }	
		
		int price = 0;	
		
		for(int i = 0; i < dto.getCheckboxSeqArray().length; i++) {
			if(i % 2 == 0) {
				int checkboxSeqArr = dto.getCheckboxSeqArray()[i];
				dto.setPrSeq(checkboxSeqArr); 
				System.out.println("------------seq :" + dto.getPrSeq());
				service.checkBuy(dto);
			} else {
				int checkboxPriceArr = dto.getCheckboxSeqArray()[i];

				price += checkboxPriceArr;
				httpSession.setAttribute("sessLastPrice", price);
				System.out.println("---------------- : " + price);
				System.out.println("최종적으로 넘어갈 가격 ---------------- :" + httpSession.getAttribute("sessLastPrice"));
			}
//				System.out.println("----------개당 가격" + dto.getCheckboxSeqArray()[i]);
//				int price2 = 0;
//				System.out.println("--------------price값 :" + price);
//				System.out.println("--------------price2값 :" + price2);
//				System.out.println("-44444-------------- :" + checkboxPriceArr);
//				int lastPrice = price + checkboxPriceArr;
//				System.out.println("-------------lastPrice값 : " + lastPrice);
//				int lastPrice2 = price2 + checkboxPriceArr;
//				System.out.println("-------------lastPrice2값 : " + lastPrice2);
				
				
//				for(int j = 0; j < dto.getCheckboxSeqArray().length/2; j++) {
//					
//					int price3 = 0;
//					
//					int checkboxPriceArr = dto.getCheckboxSeqArray()[i];
//					
//					System.out.println("-44444-------------- :" + checkboxPriceArr);
//					
//					System.out.println("--------------price값 :" + price);
//					System.out.println("--------------price2값 :" + price2);
//					System.out.println("--------------price3값 :" + price3);
//					int lastPrice = price + checkboxPriceArr;
//					System.out.println("-------------lastPrice값 : " + lastPrice);
//					int lastPrice2 = price2 + checkboxPriceArr;
//					System.out.println("-------------lastPrice2값 : " + lastPrice2);
//					int lastPrice3 = price3 + checkboxPriceArr;
//					System.out.println("-------------lastPrice3값 : " + lastPrice3);
//					httpSession.setAttribute("sessLastPrice", lastPrice);
//					System.out.println("최종적으로 넘어갈 가격 ---------------- :" + httpSession.getAttribute("sessLastPrice"));
//
//				}
//			}
		}
		dto.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("dto", dto);

		return "redirect:/order/orderForm";
	}
	
	@RequestMapping(value = "oderFormUptd")
	public String oderFormUptd(Basket dto, OrderVo vo,RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		if(dto.getBskSeqs() != null && dto.getBskSeqs().length > 0) {
            
            for(int i=0; i< dto.getBskSeqs().length; i++) {
                dto.setBskAmount(dto.getBskAmounts()[i]);
                dto.setBskSell_Price(dto.getBskSell_Prices()[i]);
                dto.setBskSeq(dto.getBskSeqs()[i]);
                
                service.bskUpdt(dto);
            }
        }
		
		httpSession.setAttribute("sessLastPrice", dto.getLastPrice());
		//dto.setLastPrice(dto.getLastPrice());
		vo.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		//redirectAttributes.addFlashAttribute("dto", dto);
		
		return "redirect:/order/orderForm";
	}
	
	
}
