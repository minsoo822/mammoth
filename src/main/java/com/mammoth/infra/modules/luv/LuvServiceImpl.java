package com.mammoth.infra.modules.luv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LuvServiceImpl implements LuvService{

	@Autowired
	LuvDao dao;

	
	@Override
	public List<Luv> luvList(Luv dto) throws Exception {
		return dao.luvList(dto);
	}

	@Override
	public void luvInst() throws Exception {
		dao.luvInst();
	}

	@Override
	public void luvDel() throws Exception {
		dao.luvDel();
	}
	
	
	
	
	
	
}
