package com.service;

import java.util.List;

import com.model.Berth;
import com.model.Comment;

public interface PortService {

	List<Berth> berthSearch(int pageindex, int pagesize);

	int count1();

	int BerthState(Berth berth);

	List<Berth> Berthsearchid(String berid);

	int BerthStateA(Berth berth);

	int deleteberth(String bernum);

}
