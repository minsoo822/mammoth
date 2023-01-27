package com.mammoth.infra.modules.luv;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LuvDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private static String nampespace = "com.mammoth.infra.modules.luv.LuvMapper";

	
	public List<Luv> luvList(Luv dto) {return sqlSession.selectList(nampespace + ".luvList", dto);}
	
	public void luvInst(Luv dto) {sqlSession.insert(nampespace + ".luvInst", dto);}
	
	public void luvDel(Luv dto) {sqlSession.delete(nampespace + ".luvDel", dto);}
	
}
