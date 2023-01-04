package com.mammoth.infra.modules.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/product/")
public class ProductController {
	
	@RequestMapping(value="productList")
	public String productList() throws Exception {
		
		return "infra/product/user/productList";
	}
	
	@RequestMapping(value="productForm")
	public String productForm() throws Exception {
		
		return"infra/product/admin/productForm";
	}
}
