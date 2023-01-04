package com.mammoth.infra.modules.base;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/")
public class BaseController {
	
	@RequestMapping(value="")
	public String home() throws Exception {
		return "infra/home/user/main";
	}
	

}
