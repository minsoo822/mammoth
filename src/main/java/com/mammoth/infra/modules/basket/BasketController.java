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
	public String basketList(@ModelAttribute("dto") Basket dto, Model model, MemberVo vo) throws Exception {
		/* 회원정보 */
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
		redirectAttributes.addFlashAttribute("dto", dto);
		
		return "redirect:/basket/basketList";
	}
	
	
	@RequestMapping(value = "checkDel")
	public String memberMultiDele(Basket dto, RedirectAttributes redirectAttributes) throws Exception {

		for (int checkboxSeq : dto.getCheckboxSeqArray()) {
			dto.setPrSeq(checkboxSeq);
			service.oneDel(dto);
		}
		redirectAttributes.addFlashAttribute("dto", dto);

		return "redirect:/basket/basketList";
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
