package com.mammoth.infra.modules.member;

public interface MemberService {

	public int memberInst(Member dto) throws Exception;
	public Member myInfo(Member dto) throws Exception;
	public int idCheck(Member dto) throws Exception;
	
}