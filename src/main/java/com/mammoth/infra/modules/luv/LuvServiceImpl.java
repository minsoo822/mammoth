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
	public void luvInst(Luv dto) throws Exception {
		dao.luvInst(dto);
	}

	@Override
	public void luvDel(Luv dto) throws Exception {
		dao.luvDel(dto);
	}
	
	
	
	
	
	
}
