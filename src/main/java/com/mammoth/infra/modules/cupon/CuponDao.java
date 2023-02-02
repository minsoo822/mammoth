package com.mammoth.infra.modules.cupon;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CuponDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mammoth.infra.modules.cupon.CuponMapper";
	
	public List<Cupon> selectList(Cupon dto) { return sqlSession.selectList(namespace + ".selectList", dto);}
	public int signUpCupon(Cupon dto) { return sqlSession.insert(namespace + ".signUpCupon", dto);}
	

	
}
