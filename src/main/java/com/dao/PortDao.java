package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.Berth;

/*企业端dao接口*/
public interface PortDao {

	List<Berth> BerthSearch(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);

	int count();

	int berthState(Berth berth);

	List<Berth> berthSearchid(String berid);

	int berthStateA(Berth berth);

	int deleteberth(String bernum);
	
	
}