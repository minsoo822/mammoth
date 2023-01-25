package com.mammoth.infra.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	OrderDao dao;

	@Override
	public List<Order> selectList(OrderVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}
	@Override
	public Order selectOne(OrderVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}
	

	
	
	
	
	

}
