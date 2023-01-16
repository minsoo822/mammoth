package com.mammoth.infra.modules.review;

import org.springframework.web.multipart.MultipartFile;

import com.mammoth.infra.modules.base.Base;

public class Review extends Base{
	
	private Integer rvSeq;
	private String rvContents;
	private Integer rv_prSeq;
	private Integer rv_mmSeq;
	private Integer rvStar;
	private String rvCreDate;
	
	private MultipartFile rvImg;
	
	
	public Integer getRvSeq() {
		return rvSeq;
	}
	public void setRvSeq(Integer rvSeq) {
		this.rvSeq = rvSeq;
	}
	public String getRvContents() {
		return rvContents;
	}
	public void setRvContents(String rvContents) {
		this.rvContents = rvContents;
	}
	public Integer getRv_prSeq() {
		return rv_prSeq;
	}
	public void setRv_prSeq(Integer rv_prSeq) {
		this.rv_prSeq = rv_prSeq;
	}
	public Integer getRv_mmSeq() {
		return rv_mmSeq;
	}
	public void setRv_mmSeq(Integer rv_mmSeq) {
		this.rv_mmSeq = rv_mmSeq;
	}
	public Integer getRvStar() {
		return rvStar;
	}
	public void setRvStar(Integer rvStar) {
		this.rvStar = rvStar;
	}
	public String getRvCreDate() {
		return rvCreDate;
	}
	public void setRvCreDate(String rvCreDate) {
		this.rvCreDate = rvCreDate;
	}
	public MultipartFile getRvImg() {
		return rvImg;
	}
	public void setRvImg(MultipartFile rvImg) {
		this.rvImg = rvImg;
	}
	
	
	
	
}
