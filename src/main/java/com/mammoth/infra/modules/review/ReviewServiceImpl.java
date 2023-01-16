package com.mammoth.infra.modules.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mammoth.infra.common.util.UtilUpload;

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
		
		String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
		
		UtilUpload.uploadReviewImg(dto.getRvImg(), pathModule, dto);
		
		dao.insertUpload(dto);
	}

}
