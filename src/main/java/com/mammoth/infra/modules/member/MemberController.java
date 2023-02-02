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
import com.mammoth.infra.modules.cupon.Cupon;
import com.mammoth.infra.modules.cupon.CuponServiceImpl;

@Controller
@RequestMapping(value="/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	@Autowired
	CuponServiceImpl cpservice;
	
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
	@RequestMapping(value = "checkDel")
	public String memberMultiDele(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		for (int checkboxSeq : dto.getCheckboxSeqArray()) {
			dto.setAdrSeq(checkboxSeq);
			service.adrCheckDel(dto);
		}
		vo.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/adrList";
	}

	@RequestMapping(value="login")
	public String login() throws Exception {
		return "infra/member/user/login";
	}
	
	
	@RequestMapping(value="guest_order")
	public String guest_order() throws Exception {
		return "infra/member/user/guest_order";
	}
	
	@RequestMapping(value="join")
	public String join() throws Exception {
		return "infra/member/user/join";
	}
	@RequestMapping(value="join2")
	public String join2() throws Exception {
		return "infra/member/user/join2";
	}
	@RequestMapping(value="signUp")
	public String signUp() throws Exception {
		return "infra/member/user/signUp";
	}
	
	@RequestMapping(value="signUpInst")
	public String signUpInst(Member dto , Cupon cpdto) throws Exception {
		
		System.out.println("--------------월 :" + dto.getMmMonth());
		System.out.println("--------------일 :" + dto.getMmDay());
		
		
		dto.setMmBirth(String.valueOf(dto.getMmMonth() + dto.getMmDay()));
		
		service.memberInst(dto);
		System.out.println("--------------- : " + dto.getMmSeq());
		cpdto.setMmSeq(dto.getMmSeq());
		cpservice.signUpCupon(cpdto);
		
		return "infra/member/user/login";
	}
	
	@RequestMapping(value="myinfo")
	public String myinfo(@ModelAttribute("vo") MemberVo vo, Member dto ,Model model) throws Exception {
		
		
		Member myInfo = service.selectOne(vo);
		model.addAttribute("item", myInfo);
		
		/* 생일 월/일 나눠서 넣기 */
		String birth = myInfo.getMmBirth();
		String month = birth.substring(0, 2);
		String day = birth.substring(2);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		
		Member adrselectOne = service.adrselectOne(vo);
		model.addAttribute("adritem", adrselectOne);
		
		// selectOne해서 가져온 myInfo에서 getMmId 값 안에 문자열 @K가 포함되어있으면 true 리턴 없으면 false 리턴
		// kakaoCheck라는 이름으로 model에 담아 jsp에 넘겨줌
		model.addAttribute("kakaoCheck", myInfo.getMmId().contains("@K"));
		System.out.println("kakaocCheck : " + myInfo.getMmId().contains("@K"));
		
		return "infra/member/user/myinfo";
	}
	
	@RequestMapping(value="myinfoUpda")
	public String myinfoUpda(Member dto ,MemberVo vo ,RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		//마이인포에 주소가없으면 insert 없으면 update
		if (dto.getAdrSeq() == null) {
			service.myinfoAddrInst(dto);
		} else {
			//dto.setMmSeq((int)httpSession.getAttribute("sessSeq"));
			service.adrdefaultNy(dto);
			service.myinfoAddrUpdat(dto);
		}
		
		vo.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/myinfo";
	}

	@ResponseBody
    @RequestMapping(value = "certUpdt")
    public Map<String, Object> certUpdt(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 
    	
        service.certUpdt(dto);
        
        //Member cert = service.logInCd(dto);
        
        returnMap.put("rt", "success");
        //returnMap.put("certName", cert.getMmName());
        //returnMap.put("certNy", cert.getMmCertNy());
        
        
        
        return returnMap;
    }
	
	@RequestMapping(value="mypage")
	public String mypage(MemberVo vo, Cupon cpdto, Model model) throws Exception {
		
		Member mypage = service.selectOne(vo);
		model.addAttribute("item", mypage);
		
		List<Cupon> cpList = cpservice.selectList(cpdto);
		model.addAttribute("cpList", cpList);
		
		return "infra/member/user/mypage";
	}
	
	//sns로그인
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
	//일반 로그인
	@ResponseBody
    @RequestMapping(value = "signInCd")
    public Map<String, Object> signInCd(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 
        
        System.out.println("아이디 :" +dto.getMmId());
        System.out.println("비밀번호 :" +dto.getMmPassword());
        Member logInCd = service.signInCd(dto);
        
        System.out.println(logInCd);
        if(logInCd != null ) {
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
    @RequestMapping(value = "signUpidCheck")
    public Map<String, Object> signUpidCheck(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 
        
        int idCheck = service.idCheck(dto);
        
	        if(idCheck > 0 ) {
	        	returnMap.put("rt", "fail");
	        } else {
	        	returnMap.put("rt", "success");
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
    		
    		returnMap.put("rt", "fail");
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
