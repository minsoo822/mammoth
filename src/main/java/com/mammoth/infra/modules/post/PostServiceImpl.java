package com.mammoth.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService{
	
	@Autowired
	PostDao dao;

	@Override
	public List<Post> selectList() throws Exception {
		return dao.selectList();
	}
	
	
	
	

}
