package com.mammoth.infra.modules.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private String namespace = "com.mammoth.infra.modules.product.ProductMapper";
	
	public List<Product> selectListMDpick(Product dto) throws Exception {return sqlSession.selectList(namespace + ".selectListMDpick", dto);}
	
	public List<Product> selectList(Product dto) throws Exception {return sqlSession.selectList(namespace + ".selectList", dto);}
	
//	public List<Product> selectListFromCategory(Product dto) throws Exception {return sqlSession.selectList(namespace + ".selectListFromCategory", dto);}
	
	public void insert(Product dto) throws Exception {sqlSession.insert(namespace + ".insert", dto);}
	
	public void insertUpload(Product dto) throws Exception {sqlSession.insert(namespace + ".insertUpload", dto);}
	
	public Product selectOne(Product dto) throws Exception {return sqlSession.selectOne(namespace + ".selectOne", dto);}
	
	public List<Product> selectListPrImg(Product dto) throws Exception {return sqlSession.selectList(namespace + ".selectListPrImg", dto);}

	public List<Product> selectListPrDtImg(Product dto) throws Exception {return sqlSession.selectList(namespace + ".selectListPrDtImg", dto);}
	
	public Product bsketSelectOne(Product dto) { return sqlSession.selectOne(namespace + ".bsketSelectOne", dto);}

}
