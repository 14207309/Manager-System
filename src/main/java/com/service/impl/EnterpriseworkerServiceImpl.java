/*package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.EnterpriseworkerMapper;
import com.service.IEnterpriseworkerService;


企业用户业务层
@Service("enterpriseworkerService")
public class EnterpriseworkerServiceImpl implements IEnterpriseworkerService {

	@Resource(name="IUserDao")
	private EnterpriseworkerMapper dao;
	public void setDao(EnterpriseworkerMapper dao) {
		this.dao = dao;
	}
	
	
	
	
	
	
	
	
	
	
	@Transactional
	public Boolean loginService(String name,String password) {
		boolean flag;
		System.out.println("yonghu!!!"+name);
		//String  u = dao.login(name);;
		System.out.println("mima!!!!!"+u);
		if(u.equals(password)){
			flag = true;
		}else{
			flag = false;
		}
		
		return flag;
	}
	
	
	@Override
	public void addUser(User user){
		dao.insert(user);
	}
	@Override
	public boolean getEnumber(String Enumber){
		
		System.out.println("查看是否有相同用户名");
		User o = dao.selectEnumber(Enumber);
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
	@Override
	public void register(User op) {
		System.out.println("用户注册");
		dao.add(op);
	}
}
*/