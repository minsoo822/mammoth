package com.mammoth.infra.modules.cupon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping(value="/basket/")
public class CuponController {

	@Autowired
	CuponServiceImpl service;
	

	
}
