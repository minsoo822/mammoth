package com.mammoth.infra.modules.basket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BasketServiceImpl implements BasketService{
	@Autowired
	BasketDao dao;
	
	
	@Override
	public List<Basket> selectList(Basket dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(dto);
	}
	@Override
	public int selectListCount(Basket dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListCount(dto);
	}
	@Override
	public int basketInst(Basket dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.basketInst(dto);
	}
	@Override
	public int basketCount(Basket dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.basketCount(dto);
	}
	

	

	
}