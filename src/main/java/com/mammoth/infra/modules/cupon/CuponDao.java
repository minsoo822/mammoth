package com.mammoth.infra.modules.cupon;

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
	
	public int signUpCupon(Cupon dto) { return sqlSession.insert(namespace + ".signUpCupon", dto);}
	

	
}
