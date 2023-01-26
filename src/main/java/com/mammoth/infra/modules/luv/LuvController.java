package com.mammoth.infra.modules.luv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/luv/")
public class LuvController {
	

	@Autowired
	LuvServiceImpl service;
	
	
	@RequestMapping(value="luvList")
	public String luvList() throws Exception {
		
		return "";
	}
	
	@ResponseBody
	@RequestMapping(value = "luvInst")
	public Map<String, Object> luvInst(Luv dto) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		List<Luv> luvList = service.luvList(dto);
		
		if(luvList != null) {
			result.put("rt", "success");
			result.put("luvList", luvList);
		}
		
//		resultMap.put("basketSeq", basketItem.getPrSeq());
//		resultMap.put("basketName", basketItem.getPrName());
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "luvDel")
	public Map<String, Object> luvDel(Luv dto) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
//		resultMap.put("basketSeq", basketItem.getPrSeq());
//		resultMap.put("basketName", basketItem.getPrName());
		
		return result;
	}
	
	
	
	
	

}
