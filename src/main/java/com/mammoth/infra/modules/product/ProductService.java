package com.mammoth.infra.modules.product;

import java.util.List;

public interface ProductService {
	
	public List<Product> selectList() throws Exception;
	
	public void insert(Product dto) throws Exception;
	
	public Product selectOne(Product dto) throws Exception;
	
	public List<Product> selectListPrImg() throws Exception;
	
	public List<Product> selectListPrDtImg() throws Exception;
	
	public Product bsketSelectOne(Product dto) throws Exception;
	
}
