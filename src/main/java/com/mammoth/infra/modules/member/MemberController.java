package com.mammoth.infra.modules.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/member/")
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
	
	@RequestMapping(value="guest_order")
	public String guest_order() throws Exception {
		return "infra/member/guest_order";
	}
	
	@RequestMapping(value="join")
	public String join() throws Exception {
		return "infra/member/join";
	}
	
	@RequestMapping(value="myinfo")
	public String myinfo() throws Exception {
		return "infra/member/myinfo";
	}
	
	@RequestMapping(value="mypage")
	public String mypage() throws Exception {
		return "infra/member/mypage";
	}
	
}
