package com.mammoth.infra.modules.product;

import java.util.List;

public interface ProductService {
	
	public List<Product> selectListMDpick(Product dto) throws Exception;
	
	public List<Product> selectList(Product dto) throws Exception;
	
//	public List<Product> selectListFromCategory(Product dto) throws Exception;
	
	public void insert(Product dto) throws Exception;
	
	public Product selectOne(Product dto) throws Exception;
	
	public List<Product> selectListPrImg(Product dto) throws Exception;
	
	public List<Product> selectListPrDtImg(Product dto) throws Exception;
	
	public Product bsketSelectOne(Product dto) throws Exception;
	
}
