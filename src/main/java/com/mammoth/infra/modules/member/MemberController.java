package com.mammoth.infra.modules.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mammoth.infra.common.contants.Constants;

@Controller
@RequestMapping(value="/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;

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
	
	@ResponseBody
    @RequestMapping(value = "kakaoLoginProc")
    public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 
        
        String txt = dto.getMmId();
        String[] split = txt.split("@");
        dto.setMmId(split[0]);
        
        int kakaoLogin = service.idCheck();
        
//         System.out.println("test : " + dto.getToken());
        
        if (kakaoLogin == 0) {
            service.memberInst(dto);    
            
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            // session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            //session(dto, httpSession); 
            returnMap.put("rt", "success");
        } else {
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            
            // session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
            //session(kakaoLogin, httpSession);
            returnMap.put("rt", "success");
        }
        return returnMap;
    }
	
}
