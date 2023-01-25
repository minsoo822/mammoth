package com.mammoth.infra.modules.order;

import java.util.List;

public interface OrderService {
	
	public List<Order> selectList(OrderVo vo) throws Exception;
	public Order selectOne(OrderVo vo) throws Exception;
}
