package com.mammoth.infra.modules.base;

import org.springframework.web.multipart.MultipartFile;

import com.mammoth.infra.common.contants.Constants;

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
	
	// 상품 업로드
	private MultipartFile[] prImg; //상품 이미지
	private MultipartFile[] prDetailImg; //상세 이미지
	
	// 리뷰 업로드
	private MultipartFile rvImg; // 리뷰 이미지 1장만 넣을거
	
	private Integer up_prSeq;
	private Integer up_mmSeq;
	
	//paging 
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수
	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
	private Integer RNUM;
	
	public void setParamsPaging(int totalRows) {
		
		/*
		 * System.out.println("여기에요"); System.out.println(rowNumToShow);
		 * System.out.println(startRnumForMysql);
		 */
		
		setTotalRows(totalRows);

		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
//			System.out.println("setTotalPage : " + getTotalRows() + "/" + getRowNumToShow());
			setTotalPages(getTotalRows() / getRowNumToShow());
		}

		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}

		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
		
//		setEndRnumForOracle((getRowNumToShow() * getThisPage()));
//		setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
//		if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
		
		
		System.out.println("getThisPage():" + getThisPage());
		System.out.println("getTotalRows():" + getTotalRows());
		System.out.println("getRowNumToShow():" + getRowNumToShow());
		System.out.println("getTotalPages():" + getTotalPages());
		System.out.println("getStartPage():" + getStartPage());
		System.out.println("getEndPage():" + getEndPage());		
//		System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
//		System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
		System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
		
	}

	
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

	public MultipartFile getRvImg() {
		return rvImg;
	}

	public void setRvImg(MultipartFile rvImg) {
		this.rvImg = rvImg;
	}


	public int getThisPage() {
		return thisPage;
	}


	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}


	public int getRowNumToShow() {
		return rowNumToShow;
	}


	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}


	public int getPageNumToShow() {
		return pageNumToShow;
	}


	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}


	public int getTotalRows() {
		return totalRows;
	}


	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}


	public int getTotalPages() {
		return totalPages;
	}


	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}


	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}


	public Integer getRNUM() {
		return RNUM;
	}


	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}


	

}
