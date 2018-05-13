package com.service;

import java.util.List;

import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.Portworker;
import com.model.RiskGoodsPet;

public interface IPortworkerService {
	//public Boolean loginService(String name,String password);
	public List<Portworker> loginService2(String name);

	public List<Enterpriseworker> findUser(int pageindex, int pagesize);

	public int count();

	public List<PortEnterprise> portEnterpriseinfo();

	public int count1();

	public List<Portworker> selectPorkorker();

	/**/

	public void insertPortWorker(Portworker port);

	public int updateportWorker(Portworker port);

	public int deleteportWorker(String wnumber);

	public List<PortEnterprise> selectportEnterpriseinfo(String wnum);

	public void submitPortEnterpriseinfo(PortEnterprise port);

	public int deletePortEnterpriseinfo(String enumber);

	public List<Enterpriseworker> findEnterpriseWorkerTrans();

	public void revisePass(String newPass, String username);


	
}
