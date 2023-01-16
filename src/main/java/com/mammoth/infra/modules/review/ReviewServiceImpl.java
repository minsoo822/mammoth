package com.mammoth.infra.modules.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	ReviewDao dao;

	@Override
	public List<Review> selectList(Review dto) throws Exception {

		return dao.selectList(dto);
	}

	@Override
	public void insert(Review dto) throws Exception {

		dao.insert(dto);
	}

	@Override
	public void insertUpload(Review dto) throws Exception {

		dao.insertUpload(dto);
	}
	
	

}
