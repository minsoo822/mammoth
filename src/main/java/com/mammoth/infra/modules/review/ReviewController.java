package com.mammoth.infra.modules.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/review/")
public class ReviewController {
	
	@Autowired
	ReviewServiceImpl service;
	
	@RequestMapping(value="reviewList")
	public String reviewList(Model model) throws Exception {
		
		return "";
	}
	
	@ResponseBody
	@RequestMapping(value="reviewInst")
	public Map<String, Object> thumbUp(Review dto) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		service.insert(dto);
		
		List<Review> list = service.selectList(dto);
		
		if(list != null) {
			result.put("rt", "success");
			result.put("list", list);
			
		} else {
			result.put("rt", "fail");
		}
		
		return result;
	}
	
	

}
