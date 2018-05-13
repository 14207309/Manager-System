package com.service;

import java.util.List;

import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.Propertygrid;
import com.model.User;
/*企业端业务层接口*/
public interface IUserService {
	/**港口企业用户端登录*/
	Boolean loginService(String name,String password);
	
	/**港口企业驻港注册*/
	void register(User op);
	boolean getEnumber(String Enumber);
	
	
	boolean getNnumber(String nnumber);
	/**添加企业工作人员**/
	void addEnterpriseWorker(Enterpriseworker en);
	/**修改企业工作人员**/
	int updateEnterpriseWorker(Enterpriseworker en);

	User enterpriseInfo(String num);

	String searchEname(String username);

	int deleteEnterpriseWorker(String nnumber);

	/*boolean getNnumber1(String nnumber);*/
}
