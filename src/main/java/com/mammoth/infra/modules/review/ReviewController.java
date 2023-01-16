package com.mammoth.infra.modules.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/review/")
public class ReviewController {
	
	@Autowired
	ReviewServiceImpl service;
	
	

}
