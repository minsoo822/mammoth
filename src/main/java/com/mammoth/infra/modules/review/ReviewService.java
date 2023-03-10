package com.mammoth.infra.modules.review;

import java.util.List;

public interface ReviewService {
	
	public List<Review> selectList(Review dto) throws Exception;
	
	public void insert(Review dto) throws Exception;
	
	public Review selectOne(Review dto) throws Exception;
	
	public Double rvStarAver(Review dto) throws Exception;
}
