package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IUserDao;
import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.Propertygrid;
import com.model.User;
import com.service.IUserService;

/*企业用户业务层*/
@Service("userService")
public class UserServiceImpl implements IUserService {

	@Autowired
	/*@Resource(name="IUserDao")*/
	private IUserDao dao;
	public void setDao(IUserDao dao) {
		this.dao = dao;
	}
	
	@Transactional
	public Boolean loginService(String name,String password) {
		boolean flag;
		System.out.println("yonghu!!!"+name);
		String  u = dao.login(name);
		System.out.println("mima!!!!!"+u);
		if(u.equals(password)){
			flag = true;
		}else{
			flag = false;
		}
		
		return flag;
	}
	
	@Override
	public boolean getEnumber(String Enumber){
		
		System.out.println("查看是否有相同用户名");
		User o = dao.selectEnumber(Enumber);
		System.out.println(o);
		if (o != null) {
			System.out.println("进行用户名比较");
			if (o.getEnumber().equals(Enumber)) {
				System.out.println("有相同用户名号，无法注册");
				return false;
			}
		}
			System.out.println("无相同用户名，可以注册");
			return true;
	}
	/*港口企业注册*/
	@Override
	public void register(User op) {
		System.out.println("用户注册");
		dao.register(op);
	}
	/*查询要添加的驻港企业工作人员编号是否重复*/
	@Override
	public boolean getNnumber(String nnumber) {
		System.out.println("查看是否有相同编号");
		Enterpriseworker En = dao.selectNnumber(nnumber);
		System.out.println(En);
		if (En != null) {
			System.out.println("进行编号比较");
			if (En.getNnumber().equals(nnumber)) {
				System.out.println("有相同编号，无法添加");
				return false;
			}
		}
			System.out.println("无相同编号，可以添加");
			return true;
	}
	/*添加企业工作人员*/
	@Override
	public void addEnterpriseWorker(Enterpriseworker en) {
		System.out.println("添加港口企业工作人员");
		dao.addenterpriseworker(en);
	}
	/*@Override
	public boolean getNnumber1(String nnumber){
		Enterpriseworker en =dao.updateNnumber(nnumber);
		if (en != null) {
			if (en.getNnumber().equals(nnumber)) {
				System.out.println("有相同编号，无法修改");
				return false;
			}
		}
			System.out.println("无相同编号，可以修改");
			return true;
	}*/
	/*企业工作人员信息修改*/
	@Override
	public int updateEnterpriseWorker(Enterpriseworker en) {
		System.out.println("用户修改");
		return dao.updateenterpriseworker(en);
	}
	/*企业信息查询*/
	@Override
	public User enterpriseInfo(String Enumber ) {
		
		return dao.selectEnumber(Enumber);
	}
	/*查询企业名称，用于全局使用*/
	@Override
	public String searchEname(String username) {
		return dao.searchename(username);
	}

	@Override
	public int deleteEnterpriseWorker(String nnumber) {
		return dao.deleteEnterpriseworker(nnumber);
	}
}
