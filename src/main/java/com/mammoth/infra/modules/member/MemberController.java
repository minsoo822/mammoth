package com.mammoth.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mammoth.infra.common.contants.Constants;

@Controller
@RequestMapping(value="/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="adrList")
	public String addrList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		List<Member> adrList = service.adrList(vo);
		model.addAttribute("adrList", adrList);
		
		return "infra/member/user/addrList";
	}
	@RequestMapping(value="adrForm")
	public String addrListForm(MemberVo vo, Model model) throws Exception {
		
		Member adrSelectOne = service.adrSelectOne(vo);
		model.addAttribute("adritem", adrSelectOne);
		
		return "infra/member/user/addrListForm";
	}
	@RequestMapping(value="adrInst")
	public String adrInst(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.adrdefaultNy(dto);
		service.adrInst(dto);
		vo.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/adrList";
	}
	@RequestMapping(value="adrUpdt")
	public String adrUpdt(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.adrdefaultNy(dto);
		service.adrUpdt(dto);
		vo.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/adrList";
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
	public String myinfo(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		Member myInfo = service.selectOne(vo);
		model.addAttribute("item", myInfo);
		Member adrselectOne = service.adrselectOne(vo);
		model.addAttribute("adritem", adrselectOne);
		
		return "infra/member/user/myinfo";
	}
	@RequestMapping(value="myinfoUpda")
	public String myinfoUpda(Member dto ,MemberVo vo ,RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		service.myinfoAddrInst(dto);
		vo.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/myinfo";
	}
	
	@RequestMapping(value="mypage")
	public String mypage(MemberVo vo, Model model) throws Exception {
		
		Member mypage = service.selectOne(vo);
		model.addAttribute("item", mypage);
		
		return "infra/member/user/mypage";
	}
	
	
	@ResponseBody
    @RequestMapping(value = "idCheck")
    public Map<String, Object> idCheck(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 
        
        int idCheck = service.idCheck(dto);
        Member logInCd = service.logInCd(dto);
        
        if(idCheck > 0 ) {
        	returnMap.put("rt", "success");
        	httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
        	httpSession.setAttribute("sessSeq", logInCd.getMmSeq());
			httpSession.setAttribute("sessId", logInCd.getMmId());
			httpSession.setAttribute("sessName", logInCd.getMmName());
			httpSession.setAttribute("sessAdmin", logInCd.getMmAdminNy());
			returnMap.put("name", logInCd.getMmName());
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
            
        	returnMap.put("rt", "success");
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
    		httpSession.setAttribute("sessSeq", dto.getMmSeq());
    		httpSession.setAttribute("sessId", dto.getMmId());
    		httpSession.setAttribute("sessName", dto.getMmName());
    		httpSession.setAttribute("sessEmail", dto.getMmEmail());
    		httpSession.setAttribute("sessAdmin", dto.getMmAdminNy());
        return returnMap;
    }
	
	@ResponseBody
    @RequestMapping(value = "logout")
    public Map<String, Object> logout(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 

        httpSession.invalidate();
        returnMap.put("rt", "success");
        return returnMap;
    }
	
}
