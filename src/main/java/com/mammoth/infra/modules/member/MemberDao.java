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
//	회원정보 불러오기&수정 s
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public Member adrselectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".adrselectOne", vo);}
	public int myinfoAddrInst(Member dto) { return sqlSession.insert(namespace + ".myinfoAddrInst", dto);}
	public int certUpdt(Member dto) { return sqlSession.update(namespace + ".certUpdt", dto);}
//	회원정보수정 e	
//	배송지 s
	public List<Member> adrList(MemberVo vo) { return sqlSession.selectList(namespace + ".adrList", vo);}
	public Member adrSelectOne(MemberVo vo ) { return sqlSession.selectOne(namespace + ".adrSelectOne", vo);}
	public int adrInst(Member dto) { return sqlSession.insert(namespace + ".adrInst", dto);}
	public int adrdefaultNy(Member dto) { return sqlSession.update(namespace + ".adrdefaultNy", dto);}
	public int adrUpdt(Member dto) { return sqlSession.update(namespace + ".adrUpdt", dto);}
	public int adrCheckDel(Member dto) { return sqlSession.update(namespace + ".adrCheckDel", dto);}
//	배송지 e	

	
}
