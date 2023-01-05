package com.mammoth.infra.modules.post;

import com.mammoth.infra.modules.base.Base;

public class Post extends Base{
	
	private Integer poSeq;
	private Integer po_mmSeq;
	private String poTitle;
	private String poContents;
	private Integer poViewCount;
	private Integer poUseNy;
	private Integer poDelNy;
	private String poCreDate;
	private String poModDate;
	
	private String mmName;
	
	
	public Integer getPoSeq() {
		return poSeq;
	}
	public void setPoSeq(Integer poSeq) {
		this.poSeq = poSeq;
	}
	public Integer getPo_mmSeq() {
		return po_mmSeq;
	}
	public void setPo_mmSeq(Integer po_mmSeq) {
		this.po_mmSeq = po_mmSeq;
	}
	public String getPoTitle() {
		return poTitle;
	}
	public void setPoTitle(String poTitle) {
		this.poTitle = poTitle;
	}
	public String getPoContents() {
		return poContents;
	}
	public void setPoContents(String poContents) {
		this.poContents = poContents;
	}
	public Integer getPoViewCount() {
		return poViewCount;
	}
	public void setPoViewCount(Integer poViewCount) {
		this.poViewCount = poViewCount;
	}
	public Integer getPoUseNy() {
		return poUseNy;
	}
	public void setPoUseNy(Integer poUseNy) {
		this.poUseNy = poUseNy;
	}
	public Integer getPoDelNy() {
		return poDelNy;
	}
	public void setPoDelNy(Integer poDelNy) {
		this.poDelNy = poDelNy;
	}
	public String getPoCreDate() {
		return poCreDate;
	}
	public void setPoCreDate(String poCreDate) {
		this.poCreDate = poCreDate;
	}
	public String getPoModDate() {
		return poModDate;
	}
	public void setPoModDate(String poModDate) {
		this.poModDate = poModDate;
	}
	public String getMmName() {
		return mmName;
	}
	public void setMmName(String mmName) {
		this.mmName = mmName;
	}
	
	
	

}
