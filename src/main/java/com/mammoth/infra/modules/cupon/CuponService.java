package com.mammoth.infra.modules.cupon;

import java.util.List;

public interface CuponService {

	public List<Cupon> selectList(Cupon dto) throws Exception;
	public int signUpCupon(Cupon dto) throws Exception;
	
}