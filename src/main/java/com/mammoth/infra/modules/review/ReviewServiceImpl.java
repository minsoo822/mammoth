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
		
		System.out.println("rvImg : " + dto.getRvImg());
		
		String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
		UtilUpload.uploadReviewImg(dto.getRvImg(), pathModule, dto); 
		
		// for문 돌면서 j가 0이면 -> 첫번째 사진이면 defaultNy 1 아니면 0
		// sort는 순서 -> 대표이미지 위에서 들어가니까 j를 1로 주고 여러장 들어갈땐 2,3,4,5 순서로 들어가도록 j+1
		dto.setUpDefaultNy(1); 
		dto.setUpSort(1);
		dto.setUpType(0);
		  
		dao.insertUpload(dto); 
		
		 
	}

	@Override
	public Review selectOne(Review dto) throws Exception {
		
		return dao.selectOne(dto);
	}

//	@Override
//	public Review selectRvStarAver(Review dto) throws Exception {
//		
//		Review rvStarAver = dao.selectRvStarAver(dto);
//		
//		System.out.println("(rvServiceImpl) 평점 : " + rvStarAver);
//		
//		return rvStarAver;
//	}
	
	
	
	
	

}
