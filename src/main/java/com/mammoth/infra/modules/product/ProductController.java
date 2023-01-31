package com.mammoth.infra.modules.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mammoth.infra.modules.basket.Basket;
import com.mammoth.infra.modules.basket.BasketServiceImpl;
import com.mammoth.infra.modules.luv.Luv;
import com.mammoth.infra.modules.luv.LuvServiceImpl;
import com.mammoth.infra.modules.review.Review;
import com.mammoth.infra.modules.review.ReviewServiceImpl;

@Controller
@RequestMapping(value="/product/")
public class ProductController {
	
	@Autowired
	ProductServiceImpl service;
	
	@Autowired
	ReviewServiceImpl rvService;
	
	@Autowired
	LuvServiceImpl lvService;
	
	@Autowired
	BasketServiceImpl bskService;
	
	@RequestMapping(value="productList")
	public String productList(Model model) throws Exception {
		
		List<Product> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/product/user/productList";
	}
	
	@RequestMapping(value="productForm")
	public String productForm() throws Exception {
		
		return "infra/product/admin/productForm";
	}
	
	@RequestMapping(value="productInst")
	public String insert(Product dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		return "redirect:/product/user/productList";
	}
	
	@RequestMapping(value="productView")
	public String productView(Model model, Product dto, Review rvdto, Luv lvdto) throws Exception {
		
//		System.out.println("---------prSeq : " + dto.getPrSeq());
		Product one = service.selectOne(dto);
		model.addAttribute("one", one);
		
//		/* 할인된 가격 계산 */
//		double discount = one.getPrDiscount() * 0.01;
//		double discountPrice = discount * one.getPrPrice();
//		double totalPrice = one.getPrPrice()-discountPrice;
//		model.addAttribute("prTotalPrice", totalPrice);
		
		List<Product> prImglist = service.selectListPrImg(dto);
		model.addAttribute("prImglist", prImglist);
		
		List<Product> prdtImglist = service.selectListPrDtImg(dto);
		model.addAttribute("prdtImglist", prdtImglist);

		List<Review> rvList = rvService.selectList(rvdto);
		model.addAttribute("rvList", rvList);
		
		Double rvStarAver = rvService.rvStarAver(rvdto);
		model.addAttribute("rvStarAver", rvStarAver);
		
		List<Luv> lvList = lvService.luvList(lvdto);
		model.addAttribute("lvList", lvList);
		
		return "infra/product/user/productView";
	}
	
	@ResponseBody
	@RequestMapping(value = "getBasket")
	public Map<String, Object> bsketSelectOne(Product dto) throws Exception {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		Product basketItem = service.bsketSelectOne(dto);
		
		resultMap.put("basketSeq", basketItem.getPrSeq());
		resultMap.put("basketName", basketItem.getPrName());
		resultMap.put("basketImg", basketItem.getUpPath() + basketItem.getUpUuidName());
		resultMap.put("basketTotalPrice", basketItem.getPrTotalPrice());
		
		return resultMap;
	}
	
	
	@RequestMapping(value="bskInst")
	public String bsktInst(Basket bskdto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		bskService.basketInst(bskdto);
		bskdto.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		redirectAttributes.addFlashAttribute("dto", bskdto);
		return "redirect:/basket/basketList";
	}
	
	@RequestMapping(value="buyNowInst")
	public String buyNowInst(Basket bskdto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		bskService.basketInst(bskdto);
		bskdto.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		redirectAttributes.addFlashAttribute("dto", bskdto);
		return "redirect:/basket/buyNowList";
	}
	
	
	
	
}
