package com.mammoth.infra.modules.luv;

import java.util.List;

public interface LuvService {

	public List<Luv> luvList(Luv dto) throws Exception;
	
	public void luvInst(Luv dto) throws Exception;
	
	public void luvDel(Luv dto) throws Exception;
	
}
