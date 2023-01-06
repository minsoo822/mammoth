package com.mammoth.infra.modules.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.executor.loader.ResultLoaderMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mammoth.infra.common.contants.Constants;

@Controller
@RequestMapping(value="/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="addrList")
	public String addrList() throws Exception {
		return "infra/member/user/addrList";
	}
	@RequestMapping(value="addrListForm")
	public String addrListForm() throws Exception {
		return "infra/member/user/addrListForm";
	}

	@RequestMapping(value="login")
	public String login() throws Exception {
		return "infra/member/user/login";
	}
	
	@RequestMapping(value="orderList")
	public String orderList() throws Exception {
		return "infra/member/user/orderList";
	}
	
	@RequestMapping(value="basket")
	public String basket() throws Exception {
		return "infra/member/user/basket";
	}
	
	@RequestMapping(value="guest_order")
	public String guest_order() throws Exception {
		return "infra/member/user/guest_order";
	}
	
	@RequestMapping(value="join")
	public String join() throws Exception {
		return "infra/member/user/join";
	}
	
	@RequestMapping(value="myinfo")
	public String myinfo(Member dto, Model model , HttpSession httpSession) throws Exception {
		
		Member myInfo = service.myInfo(dto);
		model.addAttribute("item", myInfo);
		return "infra/member/user/myinfo";
	}
	
	@RequestMapping(value="mypage")
	public String mypage() throws Exception {
		return "infra/member/user/mypage";
	}
	
	
	@ResponseBody
    @RequestMapping(value = "idCheck")
    public Map<String, Object> idCheck(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 
        
        int idCheck = service.idCheck(dto);
        if(idCheck > 0 ) {
        	httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
        	session(dto, httpSession); 
        	returnMap.put("rt", "success");
        } else {
        	returnMap.put("rt", "fail");
        }

        
        return returnMap;
    }
	
	@ResponseBody
    @RequestMapping(value = "kakaoLoginProc")
    public Map<String, Object> memberInst(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 

        	service.memberInst(dto);    
            
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            session(dto, httpSession); 
            returnMap.put("rt", "success");
        return returnMap;
    }
	
	
//------------------------------------------------------------------------	
	public void session(Member dto, HttpSession httpSession) {
		httpSession.setAttribute("sessSeq", dto.getMmSeq());
		httpSession.setAttribute("sessId", dto.getMmId());
		httpSession.setAttribute("sessName", dto.getMmName());
		httpSession.setAttribute("sessEmail", dto.getMmEmail());
		httpSession.setAttribute("sessAdmin", dto.getMmAdminNy());
	}
	
}
