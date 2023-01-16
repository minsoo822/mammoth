package com.mammoth.infra.modules.basket;

import java.util.List;

public interface BasketService {

	public List<Basket> selectList(Basket dto) throws Exception;
	public int selectListCount(Basket dto) throws Exception;
	public int basketInst(Basket dto) throws Exception;
	public int basketCount(Basket dto) throws Exception;
	public int Delete(Basket dto) throws Exception;
}