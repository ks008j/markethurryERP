package com.test.mherp.inouthistory;

import java.util.List;

public interface IinoutDAO {

	//목록보기
	List<inoutDTO> inoutlist();

	int add(inoutDTO dto);

	inoutDTO get(String seq);

	List<inoutDTO> clist();

	int edit(inoutDTO dto);

	int delete(String seq);

}
