package com.mammoth.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value="/product/")
public class ProductController {
	
	@Autowired
	ProductServiceImpl service;
	
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
	public String productView(Model model, Product dto) throws Exception {
		
		Product one = service.selectOne(dto);
		model.addAttribute("one", one);
		
		List<Product> prImglist = service.selectListPrImg();
		model.addAttribute("prImglist", prImglist);
		
		List<Product> prdtImglist = service.selectListPrDtImg();
		model.addAttribute("prdtImglist", prdtImglist);
		
		return "infra/product/user/productView";
	}
}
