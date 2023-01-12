package com.mammoth.infra.modules.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/product/")
public class ProductController {
	
	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping(value="productList")
	public String productList() throws Exception {
		
		service.selectList();
		
		return "infra/product/user/productList";
	}
	
	@RequestMapping(value="productForm")
	public String productForm() throws Exception {
		
		return "infra/product/admin/productForm";
	}
	
	@RequestMapping(value="productInst")
	public String insert(Product dto) throws Exception {
		System.out.println("ProductController로 들어옵니다.");
		service.insert(dto);
		
		return "infra/product/user/productList";
	}
	
	@RequestMapping(value="productView")
	public String productView(Product dto) throws Exception {
		
		service.selectOne(dto);
		
		return "infra/product/user/productView";
	}
}
