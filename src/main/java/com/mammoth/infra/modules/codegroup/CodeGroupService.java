package com.mammoth.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> selectList() throws Exception;
}
