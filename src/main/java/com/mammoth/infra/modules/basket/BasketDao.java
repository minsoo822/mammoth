package com.mammoth.infra.modules.basket;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BasketDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mammoth.infra.modules.basket.BasketMapper";
	
	public List<Basket> selectList(Basket dto) {return sqlSession.selectList(namespace + ".selectList", dto);}
	public int selectListCount(Basket dto) {return sqlSession.selectOne(namespace + ".selectListCount", dto);}
	public int basketInst(Basket dto) {return sqlSession.insert(namespace + ".basketInst", dto);}
	public int basketCount(Basket dto) {return sqlSession.selectOne(namespace + ".basketCount", dto);}
	public int oneDel(Basket dto) { return sqlSession.delete(namespace + ".oneDel", dto);}
	public int allDel(Basket dto) { return sqlSession.delete(namespace + ".allDel", dto);}
	public int TotalPrice(Basket dto) {return sqlSession.selectOne(namespace + ".TotalPrice", dto);}
	public int bskUpdt(Basket dto) { return sqlSession.update(namespace + ".bskUpdt", dto);}
	
	public List<Basket> buyNowList() throws Exception {return sqlSession.selectList(namespace + ".buyNowList", "");}
	
}
