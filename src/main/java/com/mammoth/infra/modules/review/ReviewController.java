package com.mammoth.infra.modules.review;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value="/review/")
public class ReviewController {
	
	@Autowired
	ReviewServiceImpl service;
	
	
	@RequestMapping(value="reviewInst")
	public String reviewInst(Review dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		return "redirect:/product/productList";
	}
	
	
	

}
