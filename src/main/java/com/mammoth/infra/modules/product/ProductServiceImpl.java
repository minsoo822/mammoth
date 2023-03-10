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
	public List<Product> selectListMDpick(Product dto) throws Exception {
		
		return dao.selectListMDpick(dto);
	}

	@Override
	public List<Product> selectList(Product dto) throws Exception {
		
		return dao.selectList(dto);
	}
	
	@Override
	public List<Product> selectListFromCategory(Product dto) throws Exception {
		
		return dao.selectListFromCategory(dto);
	}

	@Override
	public void insert(Product dto) throws Exception {
		
//		할인율에 따른 가격 계산
//		할인율이 0.5% 이런식으로 소수점으로 나오기때문에 데이터 타입을 double로 해주고 넣을때 int로 형변환을 해줘야함.
		double dcPrice = (dto.getPrPrice()-(dto.getPrPrice()*(dto.getPrDiscount()*0.01)));
	
		dto.setPrTotalPrice((int) dcPrice);
	  
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
	public List<Product> selectListPrImg(Product dto) throws Exception {
		
		return dao.selectListPrImg(dto);
	}

	@Override
	public List<Product> selectListPrDtImg(Product dto) throws Exception {
		
		return dao.selectListPrDtImg(dto);
	}

	@Override
	public Product bsketSelectOne(Product dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.bsketSelectOne(dto);
	}

	
	
	

}
