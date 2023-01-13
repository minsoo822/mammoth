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
	
	public List<Product> selectList() throws Exception {return sqlSession.selectList(namespace + ".selectList", "");}
	
	public void insert(Product dto) throws Exception {sqlSession.insert(namespace + ".insert", dto);}
	
	public void insertUpload(Product dto) throws Exception {sqlSession.insert(namespace + ".insertUpload", dto);}
	
	public Product selectOne(Product dto) throws Exception {return sqlSession.selectOne(namespace + ".selectOne", dto);}
	
	public List<Product> selectListPrImg() throws Exception {return sqlSession.selectList(namespace + ".selectListPrImg", "");}

	public List<Product> selectListPrDtImg() throws Exception {return sqlSession.selectList(namespace + ".selectListPrDtImg", "");}
	
	public Product bsketSelectOne(Product dto) { return sqlSession.selectOne(namespace + ".bsketSelectOne", dto);}

}
