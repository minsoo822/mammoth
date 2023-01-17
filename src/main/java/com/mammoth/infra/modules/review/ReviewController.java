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
	public Map<String, Object> reviewInst(Review dto) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		System.out.println("rv_prSeq : " + dto.getRv_prSeq());
		System.out.println("rv_mmSeq : " + dto.getRv_mmSeq());
		
		service.insert(dto);
		
		Review review = service.selectOne(dto);
		
		List<Review> list = service.selectList(dto);
		
		if(list != null) {
			result.put("rt", "success");
			result.put("writer", review.getMmName());
			result.put("creDate", review.getRvCreDate());
			result.put("grade", review.getMmGrade());
			result.put("contents", review.getRvContents());
			
		} else {
			result.put("rt", "fail");
		}
		
		return result;
	}
	
	

}
