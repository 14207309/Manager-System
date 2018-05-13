package com.dao;

import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.User;

/*企业端dao接口*/
public interface IUserDao {
	public String login(String name);
	void insert(User user);
	
	User selectEnumber(String Enumber);
	void register(User op);
	
	/*添加企业工作人员*/
	public Enterpriseworker selectNnumber(String nnumber);
	
	public void addenterpriseworker(Enterpriseworker en);
	
	
	/*public Enterpriseworker updateNnumber(String nnumber);*/
	/*修改企业工作人员*/
	public int updateenterpriseworker(Enterpriseworker en);
	public String searchename(String username);
	public int deleteEnterpriseworker(String nnumber);
	
}