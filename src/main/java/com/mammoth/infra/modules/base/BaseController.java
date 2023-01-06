package com.mammoth.infra.modules.base;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mammoth.infra.modules.member.Member;

@Controller
@RequestMapping(value="/")
public class BaseController {
	
	@RequestMapping(value="")
	public String home(Member dto, HttpSession httpSession) throws Exception {
		System.out.println(dto.getMmSeq());
		System.out.println(dto.getMmName());
		System.out.println(dto.getMmId());
		System.out.println(dto.getMmAdminNy());
		return "infra/home/user/main";
	}
	
	@RequestMapping(value="magazineList")
	public String magazineList() throws Exception {
		
		return"infra/magazine/user/magazineList";
	}
	
	@RequestMapping(value="campaignList")
	public String campaignList() throws Exception {
		
		return"infra/campaign/user/campaignList";
	}
	
	@RequestMapping(value="membership")
	public String membership() throws Exception {
		
		return"infra/post/user/membership";
	}
	

}
