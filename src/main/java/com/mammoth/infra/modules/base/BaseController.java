package com.mammoth.infra.modules.base;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mammoth.infra.modules.basket.Basket;
import com.mammoth.infra.modules.basket.BasketServiceImpl;
import com.mammoth.infra.modules.member.MemberVo;
import com.mammoth.infra.modules.product.Product;
import com.mammoth.infra.modules.product.ProductServiceImpl;

@Controller
@RequestMapping(value="/")
public class BaseController {
	
	@Autowired
	ProductServiceImpl prService;
	@Autowired
	BasketServiceImpl bskService;
	
	@RequestMapping(value="")
	public String home(MemberVo vo, Model model, HttpSession httpSession, Product prdto) throws Exception {
		
		List<Product> list = prService.selectListMDpick(prdto);
		model.addAttribute("list", list);
		
		return "infra/home/user/main";
	}
	
	@ResponseBody
	@RequestMapping(value="basketInst")
	public Map<String, Object> basketInst(Basket dto) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		int basketCount = bskService.basketCount(dto);
		if(basketCount == 0) {
			bskService.basketInst(dto);
			result.put("rt", "success");
		}
		return result;
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
