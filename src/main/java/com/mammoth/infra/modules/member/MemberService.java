package com.mammoth.infra.modules.member;

import java.util.List;

public interface MemberService {

	public int memberInst(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int idCheck(Member dto) throws Exception;
	public Member logInCd(Member dto) throws Exception;
	public Member signInCd(Member dto) throws Exception;
	public List<Member> adrList(MemberVo vo) throws Exception;
	public int adrInst(Member dto) throws Exception;
	public int adrdefaultNy(Member dto) throws Exception;
	public int adrUpdt(Member dto) throws Exception;
	public int adrCheckDel(Member dto) throws Exception;
	public int myinfoAddrInst(Member dto) throws Exception;
	public int myinfoAddrUpdat(Member dto) throws Exception;
	public Member adrSelectOne(MemberVo vo) throws Exception;
	public Member adrselectOne(MemberVo vo) throws Exception;
	public int certUpdt(Member dto) throws Exception;
	public int memberUpdt(Member dto) throws Exception;
	
}