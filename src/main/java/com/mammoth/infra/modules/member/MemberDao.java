package com.mammoth.infra.modules.member;

import java.util.List;

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
	
//	로그인&회원가입 s
	public int idCheck(Member dto) { return sqlSession.selectOne(namespace + ".idCheck", dto); }
	public Member logInCd(Member dto) {return sqlSession.selectOne(namespace + ".logInCd", dto);}
	public int memberInst(Member dto) { return sqlSession.insert(namespace + ".memberInst", dto);}
//	로그인&회원가입 e	
//	회원정보수정 s
	public int myinfoAddrInst(Member dto) { return sqlSession.insert(namespace + ".myinfoAddrInst", dto);}
//	회원정보수정 e	
//	배송지 s
	public List<Member> adrList(MemberVo vo) { return sqlSession.selectList(namespace + ".adrList", vo);}
	public Member addrSelctOne(MemberVo vo ) { return sqlSession.selectOne(namespace + ".addrSelctOne", vo);}
	public int addrInst(Member dto) { return sqlSession.insert(namespace + ".addrInst", dto);}
//	배송지 e	

	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
}
