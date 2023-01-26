package com.mammoth.infra.modules.luv;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LuvDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private String nampespace = "com.mammoth.infra.modules.luv.LuvMapper";
	
	
}
