package com.mammoth.infra.modules.review;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private String namespace = "com.mammoth.infra.modules.review.ReviewMapper";
	
	public List<Review> selectList(Review dto) throws Exception {return sqlSession.selectList(namespace + ".selectList", dto);}
	
	public void insert(Review dto) throws Exception {sqlSession.insert(namespace + ".insert", dto);}
	
	public void insertUpload(Review dto) throws Exception {sqlSession.insert(namespace + ".insertUpload", dto);}
	
	public Review selectOne(Review dto) throws Exception {return sqlSession.selectOne(namespace + ".selectOne", dto);}

}
