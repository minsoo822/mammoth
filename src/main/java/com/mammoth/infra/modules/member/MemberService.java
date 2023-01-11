package com.mammoth.infra.modules.member;

import java.util.List;

public interface MemberService {

	public int memberInst(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int idCheck(Member dto) throws Exception;
	public Member logInCd(Member dto) throws Exception;
	public List<Member> adrList(MemberVo vo) throws Exception;
	public int addrInst(Member dto) throws Exception;
	public int myinfoAddrInst(Member dto) throws Exception;
	public Member addrSelctOne(MemberVo vo) throws Exception;
}