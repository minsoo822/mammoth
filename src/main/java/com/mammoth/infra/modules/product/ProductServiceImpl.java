package com.mammoth.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mammoth.infra.common.util.UtilUpload;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	ProductDao dao;

	@Override
	public List<Product> selectList() throws Exception {
		
		return dao.selectList();
	}

	@Override
	public void insert(Product dto) throws Exception {
		
		
		/*
		 * int j = 0; for(MultipartFile myFile : dto.getMultipartFile()) {
		 * 
		 * if(!myFile.isEmpty()) {
		 * 
		 * // ProductServiceImpl String pathModule =
		 * this.getClass().getSimpleName().toString().toLowerCase().replace(
		 * "serviceimpl", ""); UtilUpload.uploadProductImg(myFile, pathModule, dto);
		 * 
		 * // for문 돌면서 j가 0이면 -> 첫번째 사진이면 1 아니면 0으로 dto넣어줌 // sort도 마찬가지로 +1
		 * dto.setUpDefaultNy(j == 0 ? 1 : 0); dto.setUpSort(j+1);
		 * 
		 * dao.insertUpload(dto); j++; }
		 * 
		 * }
		 */
		 
		dao.insert(dto);
	}

	@Override
	public Product selectOne(Product dto) throws Exception {
		
		return dao.selectOne(dto);
	}

	
	
	
	
	
	
	
	
	
	

}
