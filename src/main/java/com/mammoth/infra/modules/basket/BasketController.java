package com.mammoth.infra.modules.basket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
@Controller
@RequestMapping(value="/basket/")
public class BasketController {

	@Autowired
	BasketServiceImpl service;
	
	@RequestMapping(value="basketList")
	public String basketList(@ModelAttribute("dto") Basket dto, Model model) throws Exception {
		
		int selectListCount = service.selectListCount(dto);
		model.addAttribute("selectListCount", selectListCount);
		List<Basket> selectList = service.selectList(dto);
		model.addAttribute("list", selectList);
		
		return "infra/member/user/basket";
	}
	
	@RequestMapping(value="oneDel")
	public String oneDel(Basket dto , RedirectAttributes redirectAttributes) throws Exception {
		service.oneDel(dto);
		dto.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("dto", dto);
		return "redirect:/basket/basketList";
	}
}
