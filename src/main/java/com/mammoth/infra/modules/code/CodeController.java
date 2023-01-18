package com.mammoth.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value="codeList")
	public String codeList() throws Exception {
		
		List<Code> list = service.selectList();
		
		return "";
	}
}
