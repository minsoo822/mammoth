package com.mammoth.infra.modules.order;

import com.mammoth.infra.modules.base.Base;

public class Order extends Base{
	
	private Integer bskSeq;
	private Integer prSeq;
	
	private String upPath;
	private String upUuidName;
	private String prName;
	private Integer prTotalPrice;
	private Integer bskAmount;
	private Integer bskSell_Price;
	
	
	
	public Integer getBskSeq() {
		return bskSeq;
	}
	public void setBskSeq(Integer bskSeq) {
		this.bskSeq = bskSeq;
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
	public Integer getPrTotalPrice() {
		return prTotalPrice;
	}
	public void setPrTotalPrice(Integer prTotalPrice) {
		this.prTotalPrice = prTotalPrice;
	}
	public Integer getBskAmount() {
		return bskAmount;
	}
	public void setBskAmount(Integer bskAmount) {
		this.bskAmount = bskAmount;
	}
	public Integer getBskSell_Price() {
		return bskSell_Price;
	}
	public void setBskSell_Price(Integer bskSell_Price) {
		this.bskSell_Price = bskSell_Price;
	}
	
	
	
	
	
}
