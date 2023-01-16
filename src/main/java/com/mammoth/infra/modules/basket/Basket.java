package com.mammoth.infra.modules.basket;

public class Basket {

	private Integer bskSeq;
	
	private Integer mmSeq;
	private Integer prSeq;
	
	private String upPath;
	private String upUuidName;
	private String prName;
	
	private Integer[] checkboxSeqArray;
	
	
	public Integer getBskSeq() {
		return bskSeq;
	}
	public void setBskSeq(Integer bskSeq) {
		this.bskSeq = bskSeq;
	}
	public Integer getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(Integer mmSeq) {
		this.mmSeq = mmSeq;
	}
	public Integer getPrSeq() {
		return prSeq;
	}
	public void setPrSeq(Integer prSeq) {
		this.prSeq = prSeq;
	}
	public String getUpPath() {
		return upPath;
	}
	public void setUpPath(String upPath) {
		this.upPath = upPath;
	}
	public String getUpUuidName() {
		return upUuidName;
	}
	public void setUpUuidName(String upUuidName) {
		this.upUuidName = upUuidName;
	}
	public String getPrName() {
		return prName;
	}
	public void setPrName(String prName) {
		this.prName = prName;
	}
	public Integer[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}
	public void setCheckboxSeqArray(Integer[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}
	
	
	
}
