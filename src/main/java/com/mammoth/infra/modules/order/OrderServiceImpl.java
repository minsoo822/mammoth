package com.mammoth.infra.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mammoth.infra.common.util.UtilUpload;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	OrderDao dao;

	@Override
	public List<Order> selectList(OrderVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}


	
	
	
	
	

}
