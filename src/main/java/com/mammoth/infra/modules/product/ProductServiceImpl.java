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
		
		  dao.insert(dto);
		  
		  dto.setUp_prSeq(dto.getPrSeq());
		  
		  String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
		  
		  // 상품 이미지
		  int i = 0; 
		  
		  for(MultipartFile myFile : dto.getPrImg()) {
		  
			  if(!myFile.isEmpty()) {
			  
				  UtilUpload.uploadProductImg(myFile, pathModule, dto); 
			  
			  // for문 돌면서 j가 0이면 -> 첫번째 사진이면 defaultNy 1 아니면 0
			  // sort는 순서 -> 대표이미지 위에서 들어가니까 j를 1로 주고 여러장 들어갈땐 2,3,4,5 순서로 들어가도록 j+1
			  dto.setUpDefaultNy(i == 0 ? 1 : 0); 
			  dto.setUpSort(i+1);
			  dto.setUpType(1);
			  
			  dao.insertUpload(dto); 
			  
			  i++; 
			  }
		  
		  }
		  
		  // 상세 이미지
		  int j = 0; 
		  
		  for(MultipartFile myFile : dto.getPrDetailImg()) {
		  
			  if(!myFile.isEmpty()) {
			  
				  UtilUpload.uploadProductImg(myFile, pathModule, dto); 
			  
			  // for문 돌면서 j가 0이면 -> 첫번째 사진이면 defaultNy 1 아니면 0
			  // sort는 순서 -> 대표이미지 위에서 들어가니까 j를 1로 주고 여러장 들어갈땐 2,3,4,5 순서로 들어가도록 j+1
			  dto.setUpDefaultNy(j == 0 ? 1 : 0); 
			  dto.setUpSort(j+1);
			  dto.setUpType(2);
			  
			  dao.insertUpload(dto); 
			  
			  j++; 
			  }
		  
		  }
		  
	}

	@Override
	public Product selectOne(Product dto) throws Exception {
		
		return dao.selectOne(dto);
	}

	@Override
	public List<Product> selectListPrImg() throws Exception {
		
		return dao.selectListPrImg();
	}

	@Override
	public List<Product> selectListPrDtImg() throws Exception {
		
		return dao.selectListPrDtImg();
	}

	@Override
	public Product bsketSelectOne(Product dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.bsketSelectOne(dto);
	}

	
	
	

}
