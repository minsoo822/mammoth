package com.mammoth.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	
	@Autowired
	CodeDao dao;

	@Override
	public List<Code> selectList() throws Exception {
		
		return dao.selectList();
	}
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		
//		서버 시작시 코트 리스트 로그에 출력하는 sysout!
//		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	  
	public static List<Code> selectListCachedCode(int cc_ccgSeq) throws Exception {
		
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCc_ccgSeq().equals(cc_ccgSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
}
