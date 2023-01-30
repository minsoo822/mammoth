package com.mammoth.infra.modules.basket;

import java.util.List;

public interface BasketService {

	public List<Basket> selectList(Basket dto) throws Exception;
	public int selectListCount(Basket dto) throws Exception;
	public int basketInst(Basket dto) throws Exception;
	public int basketCount(Basket dto) throws Exception;
	public int oneDel(Basket dto) throws Exception;
	public int allDel(Basket dto) throws Exception;
	public int TotalPrice(Basket dto) throws Exception;
	public int bskUpdt(Basket dto) throws Exception;
	public List<Basket> buyNowList() throws Exception;
}