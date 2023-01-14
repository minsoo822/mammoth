package com.mammoth.infra.modules.basket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping(value="/basket/")
public class BasketController {

	@Autowired
	BasketServiceImpl service;
	
	@RequestMapping(value="basketList")
	public String basketList(Basket dto, Model model) throws Exception {
		
		int selectListCount = service.selectListCount(dto);
		model.addAttribute("selectListCount", selectListCount);
		List<Basket> selectList = service.selectList(dto);
		model.addAttribute("list", selectList);
		
		return "infra/member/user/basket";
	}
}
