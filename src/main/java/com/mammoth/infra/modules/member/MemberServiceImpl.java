package com.mammoth.infra.modules.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;
	
	@Override
	public int memberInst(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.memberInst(dto);
	}
	@Override
	public int idCheck(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.idCheck(dto);
	}
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}
	@Override
	public Member logInCd(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.logInCd(dto);
	}
	
	

	
}