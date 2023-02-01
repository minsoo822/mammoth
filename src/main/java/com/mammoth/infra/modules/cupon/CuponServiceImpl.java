package com.mammoth.infra.modules.cupon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CuponServiceImpl implements CuponService{
	
	@Autowired
	CuponDao dao;

	@Override
	public int signUpCupon(Cupon dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.signUpCupon(dto);
	}
	
	
	

	

	
}