package com.mammoth.infra.modules.member;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mammoth.infra.modules.member.MemberMapper";
	
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int memberInst(Member dto) { return sqlSession.insert(namespace + ".memberInst", dto);}
	
//	아이디 중복 체크
	public int idCheck(Member dto) { return sqlSession.selectOne(namespace + ".idCheck", dto); }
	public Member logInCd(Member dto) {return sqlSession.selectOne(namespace + ".logInCd", dto);}
	
	
}