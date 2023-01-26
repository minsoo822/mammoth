package com.mammoth.infra.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/order/")
public class OrderController {
	
	@Autowired
	OrderServiceImpl service;
	
	@RequestMapping(value="orderList")
	public String orderList() throws Exception {
				
		return "infra/member/user/orderList";
	}
	
	@RequestMapping(value="orderForm")
	public String orderForm(@ModelAttribute("vo") OrderVo vo, Order dto, Model model) throws Exception {
		
		//장바구니에서 주문할때 상품리스트
		List<Order> oderFormList = service.selectList(vo);
		model.addAttribute("oderFormList", oderFormList);
		//회원정보
		Order selectOne = service.selectOne(vo);
		model.addAttribute("item", selectOne);
		//쿠폰 리스트
		List<Order> cuponList = service.cuponList(vo);
		model.addAttribute("cuponList", cuponList);
		
		return "infra/member/user/orderForm";
	}
	
	@RequestMapping(value="orderInst")
	public String insert(Order dto) throws Exception {
		
		
		return "infra/member/user/orderList";
	}
	
}
