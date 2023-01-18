package com.mammoth.infra.modules.code;

import java.util.List;

public interface CodeService {

	public List<Code> selectList() throws Exception;
	
	public void selectListCachedCodeArrayList() throws Exception;
}
