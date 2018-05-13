package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IPortworkerDao;
import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.Portworker;
import com.model.RiskGoodsPet;
import com.service.IPortworkerService;

@Service("portworkerService")
public class PortworkerServiceImpl implements IPortworkerService {
	
	@Autowired
	/*@Resource(name = "IPortworkerDao")*/
	private IPortworkerDao dao;


	@Transactional
	public List<Portworker> loginService2(String name) {
		/*boolean flag;*/
		System.out.println("user");
		List<Portworker> portworker = dao.login2(name);

		/*if (u.getWpassword().equals(password)) {
			flag = true;
		} else {
			flag = false;
		}*/
		/*if(u.getWpassword().equals(password)){
			if(u.getWworkstyle()==style){
				flag = true;
			}else{
				JOptionPane.showMessageDialog(null,"失败原因：用户类型不存在，请重新选择","登录失败警告",JOptionPane.PLAIN_MESSAGE);
				flag = false;
			}	
		}else {
			JOptionPane.showMessageDialog(null,"失败原因：密码错误，请重新输入，","登录失败警告",JOptionPane.PLAIN_MESSAGE);
			flag = false;
		}*/
		return portworker;
	}

	@Override
	public List<Enterpriseworker> findUser(int pageindex, int pagesize) {
		return dao.findUser(pageindex,pagesize);
	}

	@Override
	public int count() {
		int total = 0;
		total = dao.count();
		return total;
	}

	@Override
	public List<PortEnterprise> portEnterpriseinfo() {
		List<PortEnterprise> PortEnterprise = dao.portEnterpriseinfo();
		for(int i=0;i<PortEnterprise.size();i++){
			if(PortEnterprise.get(i).getEflag()==0){
				PortEnterprise.get(i).setType("未通过");
			}else{
				PortEnterprise.get(i).setType("通过");
			}
		}
		return PortEnterprise;
	}

	@Override
	public int count1() {
		// TODO Auto-generated method stub
		return dao.count1();
	}
	/*查询港口工作人员信息*/
	@Override
	public List<Portworker> selectPorkorker() {
		return dao.selectPortworker();
	}

/*	@Override
	public boolean getWnumber(String wnumber) {
		boolean flag;
		Portworker p = dao.selectWnumber(wnumber);
		if(p==null){
			
		}
		return flag;
	}*/
	/*添加港口工作人员*/
	@Override
	public void insertPortWorker(Portworker port) {
		dao.insertportWorker(port);
	}

	@Override
	public int updateportWorker(Portworker port) {
		return dao.updatePortWorker(port);
	}

	@Override
	public int deleteportWorker(String wnumber) {
		return dao.deletePortWorker(wnumber);
	}

	@Override
	public List<PortEnterprise> selectportEnterpriseinfo(String wnum) {
		List<PortEnterprise> portEnterprise= dao.selectPortEnterpriseinfo(wnum);
		return portEnterprise;
	}

	@Override
	public void submitPortEnterpriseinfo(PortEnterprise port) {
		 dao.submitportEnterpriseinfo(port);
	}

	@Override
	public int deletePortEnterpriseinfo(String enumber) {
		return dao.deleteportEnterpriseinfo(enumber);
	}

	@Override
	public List<Enterpriseworker> findEnterpriseWorkerTrans() {
		return dao.FindEnterpriseWorkertrans();
	}

	@Override
	public void revisePass(String newPass, String username) {
		dao.revisepass(newPass,username);
	}



}
