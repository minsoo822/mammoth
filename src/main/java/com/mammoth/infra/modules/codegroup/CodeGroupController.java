package com.mammoth.infra.modules.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value="codeGroupList")
	public String selectList() throws Exception {
		
		service.selectList();
		
		return "";
	}
}
