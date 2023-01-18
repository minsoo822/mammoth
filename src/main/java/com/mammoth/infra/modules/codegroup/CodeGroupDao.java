package com.mammoth.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private String namespace = "com.mammoth.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList() throws Exception {return sqlSession.selectList(namespace + ".selectList", "");}

}
