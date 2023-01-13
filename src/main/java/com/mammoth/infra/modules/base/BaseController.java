package com.mammoth.infra.modules.base;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mammoth.infra.modules.member.MemberVo;
import com.mammoth.infra.modules.product.Product;
import com.mammoth.infra.modules.product.ProductServiceImpl;

@Controller
@RequestMapping(value="/")
public class BaseController {
	
	@Autowired
	ProductServiceImpl prService;
	
	@RequestMapping(value="")
	public String home(MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		List<Product> list = prService.selectList();
		model.addAttribute("list", list);
		
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
