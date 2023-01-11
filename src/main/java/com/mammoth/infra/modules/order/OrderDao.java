package com.mammoth.infra.modules.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private String namespace = "com.mammoth.infra.modules.order.OrderMapper";
	
	public List<Order> selectList() throws Exception {return sqlSession.selectList(namespace + ".selectList", "");}
	
	public void insert(Order dto) throws Exception {sqlSession.insert(namespace + ".insert", dto);}
	
//	public void insertUpload(Product dto) throws Exception {sqlSession.insert(namespace + ".insertUpload", dto);}
	
	public Order selectOne(Order dto) throws Exception {return sqlSession.selectOne(namespace + ".selectOne", dto);}

}
