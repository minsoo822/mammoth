package com.mammoth.infra.modules.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/post/")
public class PostController {
	
	@RequestMapping(value="postList")
	public String postList () throws Exception {
		
		return "infra/post/user/postList";
	}
	
	@RequestMapping(value="postView")
	public String postView () throws Exception {
		
		return "infra/post/user/postView";
	}
	
}
