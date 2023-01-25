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

	public List<Order> selectList(OrderVo vo) { return sqlSession.selectList(namespace + ".selectList", vo);}
	public Order selectOne(OrderVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}

}
