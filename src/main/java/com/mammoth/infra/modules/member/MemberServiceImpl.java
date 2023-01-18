package com.mammoth.infra.modules.member;

import java.util.List;

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
	@Override
	public List<Member> adrList(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.adrList(vo);
	}
	@Override
	public int adrInst(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.adrInst(dto);
	}
	@Override
	public Member adrSelectOne(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.adrSelectOne(vo);
	}
	@Override
	public int adrUpdt(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.adrUpdt(dto);
	}
	@Override
	public int adrdefaultNy(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.adrdefaultNy(dto);
	}
	@Override
	public Member adrselectOne(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.adrselectOne(vo);
	}
	@Override
	public int myinfoAddrInst(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.myinfoAddrInst(dto);
	}
	@Override
	public int adrCheckDel(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.adrCheckDel(dto);
	}
	
	
	
	

	
}