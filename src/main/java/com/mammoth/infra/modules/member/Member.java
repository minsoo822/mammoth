package com.mammoth.infra.modules.member;

import com.mammoth.infra.modules.base.Base;

public class Member extends Base{
	
	private Integer mmSeq;
	
	private String mmId;
	private String mmPassword;
	private String mmName;
	private Integer mmTelecom;
	private String mmPhoneNumber;
	private Integer mmSmsRecieveCheckNy;
	private String mmEmail;
	private Integer mmEmailRecieveCheckNy;
	private Integer mmGender;
	private String mmBirth;
	private Integer mmGrade;
	private Integer mmCertNy;
	private String mmCreDate;
	private String mmModDate;
	private Integer mmDelNy;
	private Integer mmAdminNy;
	private Integer mmZipcode;
	private String mmAddress;
	private String mmAddressDetail;
	private String mmTel;
	private Integer cuponCount;
	
	//주소
	private Integer adrSeq;
	
	private String adrAddrName;
	private String adrName;
	private Integer  adrZipcode;
	private String adrAddress;
	private String adrAddressDetail;
	private String adrPhoneNumber;
	private String adrTel;
	private Integer  adrdefaultNy;
	private Integer  adrDelNy;
	private Integer  adr_mmSeq;
	
	private Integer[] checkboxSeqArray;
	
	//인증
	private Integer certPhone;
	private Integer certTelecom;
	
	
	public Integer getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(Integer mmSeq) {
		this.mmSeq = mmSeq;
	}
	public String getMmId() {
		return mmId;
	}
	public void setMmId(String mmId) {
		this.mmId = mmId;
	}
	public String getMmPassword() {
		return mmPassword;
	}
	public void setMmPassword(String mmPassword) {
		this.mmPassword = mmPassword;
	}
	public String getMmName() {
		return mmName;
	}
	public void setMmName(String mmName) {
		this.mmName = mmName;
	}
	public Integer getMmTelecom() {
		return mmTelecom;
	}
	public void setMmTelecom(Integer mmTelecom) {
		this.mmTelecom = mmTelecom;
	}
	public String getMmPhoneNumber() {
		return mmPhoneNumber;
	}
	public void setMmPhoneNumber(String mmPhoneNumber) {
		this.mmPhoneNumber = mmPhoneNumber;
	}
	public Integer getMmSmsRecieveCheckNy() {
		return mmSmsRecieveCheckNy;
	}
	public void setMmSmsRecieveCheckNy(Integer mmSmsRecieveCheckNy) {
		this.mmSmsRecieveCheckNy = mmSmsRecieveCheckNy;
	}
	public String getMmEmail() {
		return mmEmail;
	}
	public void setMmEmail(String mmEmail) {
		this.mmEmail = mmEmail;
	}
	public Integer getMmEmailRecieveCheckNy() {
		return mmEmailRecieveCheckNy;
	}
	public void setMmEmailRecieveCheckNy(Integer mmEmailRecieveCheckNy) {
		this.mmEmailRecieveCheckNy = mmEmailRecieveCheckNy;
	}
	public Integer getMmGender() {
		return mmGender;
	}
	public void setMmGender(Integer mmGender) {
		this.mmGender = mmGender;
	}
	public String getMmBirth() {
		return mmBirth;
	}
	public void setMmBirth(String mmBirth) {
		this.mmBirth = mmBirth;
	}
	public Integer getMmGrade() {
		return mmGrade;
	}
	public void setMmGrade(Integer mmGrade) {
		this.mmGrade = mmGrade;
	}
	public Integer getMmCertNy() {
		return mmCertNy;
	}
	public void setMmCertNy(Integer mmCertNy) {
		this.mmCertNy = mmCertNy;
	}
	public String getMmCreDate() {
		return mmCreDate;
	}
	public void setMmCreDate(String mmCreDate) {
		this.mmCreDate = mmCreDate;
	}
	public String getMmModDate() {
		return mmModDate;
	}
	public void setMmModDate(String mmModDate) {
		this.mmModDate = mmModDate;
	}
	public Integer getMmDelNy() {
		return mmDelNy;
	}
	public void setMmDelNy(Integer mmDelNy) {
		this.mmDelNy = mmDelNy;
	}
	public Integer getMmAdminNy() {
		return mmAdminNy;
	}
	public void setMmAdminNy(Integer mmAdminNy) {
		this.mmAdminNy = mmAdminNy;
	}
	public Integer getAdrZipcode() {
		return adrZipcode;
	}
	public void setAdrZipcode(Integer adrZipcode) {
		this.adrZipcode = adrZipcode;
	}
	public String getAdrAddress() {
		return adrAddress;
	}
	public void setAdrAddress(String adrAddress) {
		this.adrAddress = adrAddress;
	}
	public String getAdrAddressDetail() {
		return adrAddressDetail;
	}
	public void setAdrAddressDetail(String adrAddressDetail) {
		this.adrAddressDetail = adrAddressDetail;
	}
	public Integer getAdrdefaultNy() {
		return adrdefaultNy;
	}
	public void setAdrdefaultNy(Integer adrdefaultNy) {
		this.adrdefaultNy = adrdefaultNy;
	}
	public Integer getAdrDelNy() {
		return adrDelNy;
	}
	public void setAdrDelNy(Integer adrDelNy) {
		this.adrDelNy = adrDelNy;
	}
	public Integer getAdr_mmSeq() {
		return adr_mmSeq;
	}
	public void setAdr_mmSeq(Integer adr_mmSeq) {
		this.adr_mmSeq = adr_mmSeq;
	}
	public String getAdrAddrName() {
		return adrAddrName;
	}
	public void setAdrAddrName(String adrAddrName) {
		this.adrAddrName = adrAddrName;
	}
	public String getAdrName() {
		return adrName;
	}
	public void setAdrName(String adrName) {
		this.adrName = adrName;
	}
	public String getAdrPhoneNumber() {
		return adrPhoneNumber;
	}
	public void setAdrPhoneNumber(String adrPhoneNumber) {
		this.adrPhoneNumber = adrPhoneNumber;
	}
	public String getAdrTel() {
		return adrTel;
	}
	public void setAdrTel(String adrTel) {
		this.adrTel = adrTel;
	}
	public Integer getAdrSeq() {
		return adrSeq;
	}
	public void setAdrSeq(Integer adrSeq) {
		this.adrSeq = adrSeq;
	}
	public Integer getMmZipcode() {
		return mmZipcode;
	}
	public void setMmZipcode(Integer mmZipcode) {
		this.mmZipcode = mmZipcode;
	}
	public String getMmAddress() {
		return mmAddress;
	}
	public void setMmAddress(String mmAddress) {
		this.mmAddress = mmAddress;
	}
	public String getMmAddressDetail() {
		return mmAddressDetail;
	}
	public void setMmAddressDetail(String mmAddressDetail) {
		this.mmAddressDetail = mmAddressDetail;
	}
	public Integer[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}
	public void setCheckboxSeqArray(Integer[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}
	public Integer getCertPhone() {
		return certPhone;
	}
	public void setCertPhone(Integer certPhone) {
		this.certPhone = certPhone;
	}
	public Integer getCertTelecom() {
		return certTelecom;
	}
	public void setCertTelecom(Integer certTelecom) {
		this.certTelecom = certTelecom;
	}
	public String getMmTel() {
		return mmTel;
	}
	public void setMmTel(String mmTel) {
		this.mmTel = mmTel;
	}
	public Integer getCuponCount() {
		return cuponCount;
	}
	public void setCuponCount(Integer cuponCount) {
		this.cuponCount = cuponCount;
	}
	
	
	
}
