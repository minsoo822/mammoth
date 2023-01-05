package com.mammoth.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/post/")
public class PostController {
	
	@Autowired
	PostServiceImpl service;
	
	@RequestMapping(value="postList")
	public String postList (Model model) throws Exception {
		
		List<Post> list = service.selectList();
		model.addAttribute("list", list);
		
		
		return "infra/post/user/postList";
	}
	
	@RequestMapping(value="postView")
	public String postView () throws Exception {
		
		return "infra/post/user/postView";
	}
	
}
