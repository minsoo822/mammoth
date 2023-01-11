package com.mammoth.infra.modules.order;

import java.util.List;

public interface OrderService {
	
	public List<Order> selectList() throws Exception;
	
	public void insert(Order dto) throws Exception;
	
	public Order selectOne(Order dto) throws Exception;
	
}
