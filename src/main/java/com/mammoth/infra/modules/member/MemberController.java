package com.mammoth.infra.modules.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/")
public class MemberController {

	@RequestMapping(value="login")
	public String login() throws Exception {
		return "infra/member/login";
	}
	
	@RequestMapping(value="orderList")
	public String orderList() throws Exception {
		return "infra/member/orderList";
	}
	
	@RequestMapping(value="basket")
	public String basket() throws Exception {
		return "infra/member/basket";
	}
	
	
	
}
