package com.mammoth.infra.modules.base;

import org.springframework.web.multipart.MultipartFile;

public class Base {
	
	// 파일 업로드용 필드
	private String  upPath;
	private String  upOriginalName;
	private String  upUuidName;
	private String  upExt;
	private String  upSize;
	private Integer upSeq;
	private Integer upDefaultNy;
	private Integer upSort;
	private Integer upDelNy;
	private Integer upType;
	private MultipartFile[] prImg; //상품 이미지
	private MultipartFile[] prDetailImg; //상세 이미지
	
	private Integer up_prSeq;
	private Integer up_mmSeq;
	

	

	
	
	public String getUpPath() {
		return upPath;
	}

	public void setUpPath(String upPath) {
		this.upPath = upPath;
	}

	public String getUpOriginalName() {
		return upOriginalName;
	}

	public void setUpOriginalName(String upOriginalName) {
		this.upOriginalName = upOriginalName;
	}

	public String getUpUuidName() {
		return upUuidName;
	}

	public void setUpUuidName(String upUuidName) {
		this.upUuidName = upUuidName;
	}

	public String getUpExt() {
		return upExt;
	}

	public void setUpExt(String upExt) {
		this.upExt = upExt;
	}

	public String getUpSize() {
		return upSize;
	}

	public void setUpSize(String upSize) {
		this.upSize = upSize;
	}

	public Integer getUpSeq() {
		return upSeq;
	}

	public void setUpSeq(Integer upSeq) {
		this.upSeq = upSeq;
	}

	public Integer getUpDefaultNy() {
		return upDefaultNy;
	}

	public void setUpDefaultNy(Integer upDefaultNy) {
		this.upDefaultNy = upDefaultNy;
	}

	public Integer getUpSort() {
		return upSort;
	}

	public void setUpSort(Integer upSort) {
		this.upSort = upSort;
	}

	public Integer getUpDelNy() {
		return upDelNy;
	}

	public void setUpDelNy(Integer upDelNy) {
		this.upDelNy = upDelNy;
	}

	public Integer getUpType() {
		return upType;
	}

	public void setUpType(Integer upType) {
		this.upType = upType;
	}

	public Integer getUp_prSeq() {
		return up_prSeq;
	}

	public void setUp_prSeq(Integer up_prSeq) {
		this.up_prSeq = up_prSeq;
	}

	public Integer getUp_mmSeq() {
		return up_mmSeq;
	}

	public void setUp_mmSeq(Integer up_mmSeq) {
		this.up_mmSeq = up_mmSeq;
	}

	public MultipartFile[] getPrImg() {
		return prImg;
	}

	public void setPrImg(MultipartFile[] prImg) {
		this.prImg = prImg;
	}

	public MultipartFile[] getPrDetailImg() {
		return prDetailImg;
	}

	public void setPrDetailImg(MultipartFile[] prDetailImg) {
		this.prDetailImg = prDetailImg;
	}

	
	
	

}
