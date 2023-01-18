package com.mammoth.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService{

	@Autowired
	CodeGroupDao dao;

	@Override
	public List<CodeGroup> selectList() throws Exception {
		
		return dao.selectList();
	}
	
	
}
