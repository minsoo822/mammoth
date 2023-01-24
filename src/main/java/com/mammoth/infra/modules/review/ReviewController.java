package com.mammoth.infra.modules.review;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mammoth.infra.modules.product.Product;

@Controller
@RequestMapping(value="/review/")
public class ReviewController {
	
	@Autowired
	ReviewServiceImpl service;
	
	
	@RequestMapping(value="reviewInst")
	public String reviewInst(Review dto, RedirectAttributes redirectAttributes, Product prdto) throws Exception {
		
		service.insert(dto);
		
		redirectAttributes.addFlashAttribute("dto", prdto);
		
		return "redirect:/product/productView";
	}
	
	
	

}
