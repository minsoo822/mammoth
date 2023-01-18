package com.mammoth.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
	private Integer ccSeq;
	private String ccName;
	private Integer ccOrder;
	private Integer ccUseNy;
	private Integer ccDelNy;
	private String ccCreDate;
	private String ccModDate;
	private Integer cc_ccgSeq;
	
	// for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	
	public Integer getCcSeq() {
		return ccSeq;
	}
	public void setCcSeq(Integer ccSeq) {
		this.ccSeq = ccSeq;
	}
	public String getCcName() {
		return ccName;
	}
	public void setCcName(String ccName) {
		this.ccName = ccName;
	}
	public Integer getCcOrder() {
		return ccOrder;
	}
	public void setCcOrder(Integer ccOrder) {
		this.ccOrder = ccOrder;
	}
	public Integer getCcUseNy() {
		return ccUseNy;
	}
	public void setCcUseNy(Integer ccUseNy) {
		this.ccUseNy = ccUseNy;
	}
	public Integer getCcDelNy() {
		return ccDelNy;
	}
	public void setCcDelNy(Integer ccDelNy) {
		this.ccDelNy = ccDelNy;
	}
	public String getCcCreDate() {
		return ccCreDate;
	}
	public void setCcCreDate(String ccCreDate) {
		this.ccCreDate = ccCreDate;
	}
	public String getCcModDate() {
		return ccModDate;
	}
	public void setCcModDate(String ccModDate) {
		this.ccModDate = ccModDate;
	}
	public Integer getCc_ccgSeq() {
		return cc_ccgSeq;
	}
	public void setCc_ccgSeq(Integer cc_ccgSeq) {
		this.cc_ccgSeq = cc_ccgSeq;
	}
	
	
	
	
	
}
