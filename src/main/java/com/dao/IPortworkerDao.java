package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.Portworker;


public interface IPortworkerDao {
	public List<Portworker> login2(String name);
	
	public List<Enterpriseworker> findUser(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public int count();
	
	public List<PortEnterprise> portEnterpriseinfo();
	public int count1();

	public List<Portworker> selectPortworker();

	public void insertportWorker(Portworker port);

	public Portworker selectWnumber(String wnumber);

	public int updatePortWorker(Portworker port);

	public int deletePortWorker(String wnumber);

	public List<PortEnterprise> selectPortEnterpriseinfo(String wnum);

	public List<PortEnterprise> submitportEnterpriseinfo(PortEnterprise port);

	public int deleteportEnterpriseinfo(String enumber);

	public List<Enterpriseworker> FindEnterpriseWorkertrans();

	public void revisepass(@Param("newPass")String newPass,@Param("username")String username);
	
}