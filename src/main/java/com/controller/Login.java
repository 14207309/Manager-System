package com.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.Propertygrid;
import com.model.User;
import com.service.IUserService;
import com.tool.CaptchaUtil;

/*企业用户控制类，实现企业端的登录，注册，查询等一些列功能*/
@Controller
@RequestMapping("/test1")
public class Login {
	
	@Autowired
	private IUserService userService;


	/*企业用户登录*/
	@RequestMapping("/login1")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		String username = String.valueOf(request.getParameter("username"));
		String password = String.valueOf(request.getParameter("password"));
		String code = String.valueOf(request.getParameter("myCode"));
		/*获取固定企业编号，session存储，用于全局使用*/
		String ename = userService.searchEname(username);
		boolean user = userService.loginService(username,password);
		//创建session对象
		HttpSession session = request.getSession();
		//把用户数据保存在session域对象中
		
		
		if(user==true){
			System.out.println("用户登录成功");
			session.setAttribute("ename", ename);
			session.setAttribute("username", username);
			mv.setViewName("CompanyUser");
/*			String s = (String) session.getAttribute("ename");
			System.out.println(s);*/
		}
		else{
			System.out.println("用户登录失败");
			mv.setViewName("redirect:../index.jsp");
		}
		
		return mv;
	
	}
	/*企业用户注册*/
	@RequestMapping("/register")
	public String register(String enumber, String epassword, String ename, String ecode, String eaddr
			, String elegpeople, String emoney, String estyle, String eestDate
			, String eendDate, String ecertstate, HttpServletRequest req, HttpServletResponse rep) throws ParseException {
		
		System.out.println(eestDate);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date est = format.parse(eestDate);
		System.out.println(est);
		Date end = format.parse(eendDate);

		User op = new User();
		op.setEnumber(enumber);
		op.setEpassword(epassword);
		op.setEname(ename);
		op.setEcode(ecode);
		op.setEaddr(eaddr);
		op.setElegpeople(elegpeople);
		op.setEmoney(Double.parseDouble(emoney));
		op.setEstyle(estyle);
		op.setEestdate(est);
		op.setEenddate(end);
		op.setEcertstate(ecertstate);
		op.setEflag(0);
		
		System.out.println("用户" + enumber + "注册");
		if (userService.getEnumber(enumber)) {
			userService.register(op);
			JOptionPane.showMessageDialog(null,"注册成功，去登录","提示",JOptionPane.PLAIN_MESSAGE);
			req.setAttribute("id", "注册成功");
			return "redirect:../index.jsp";
		} else {
			JOptionPane.showMessageDialog(null,"不能有相同的id","error",JOptionPane.ERROR_MESSAGE);
			req.setAttribute("message", "注册失败");
			return "PortEnterpriseRegister";
		}
	}
	
	/**添加港口企业工作人员**/
	@RequestMapping("/addEnterpriseWorker")
	public String addEnterpriseWorker(String nnumber, String nname, String nsex, String ndate, String ncall
			, String naddr, String nworkemail, String nworkstyle, HttpServletRequest req, HttpServletResponse rep ,HttpSession session) throws ParseException {
		
		System.out.println(ndate);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date est = format.parse(ndate);

		Enterpriseworker en = new Enterpriseworker();
		en.setNnumber(nnumber);
		en.setNname(nname);
		en.setNsex(nsex);
		en.setNdate(est);
		en.setNcall(ncall);
		en.setNaddr(naddr);
		en.setNworkemail(nworkemail);
		en.setNworkstyle(nworkstyle);
		/*String s = (String) session.getAttribute("ename");
		System.out.println("用户" + s);*/
		System.out.println("用户" + nnumber + "修改");
		if (userService.getNnumber(nnumber)) {
			userService.addEnterpriseWorker(en);
			JOptionPane.showMessageDialog(null,"修改成功","提示",JOptionPane.PLAIN_MESSAGE);
			req.setAttribute("id", "修改成功");
			return "index";
		} else {
			JOptionPane.showMessageDialog(null,"不能有相同的编号","error",JOptionPane.ERROR_MESSAGE);
			req.setAttribute("message", "修改失败");
			return "PortEnterpriseRegister";
		}
	}
	/**修改港口企业工作人员**/
	@RequestMapping("/updateEnterpriseWorker")
	public String updateEnterpriseWorker(String nnumber, String nname, String nsex, String ndate, String ncall
			, String naddr, String nworkemail, String nworkstyle, HttpServletRequest req, HttpServletResponse rep) throws ParseException {
		
		System.out.println(ndate);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date est = format.parse(ndate);

		Enterpriseworker en = new Enterpriseworker();
		en.setNnumber(nnumber);
		en.setNname(nname);
		en.setNsex(nsex);
		en.setNdate(est);
		en.setNcall(ncall);
		en.setNaddr(naddr);
		en.setNworkemail(nworkemail);
		en.setNworkstyle(nworkstyle);
		 int result = 0; 
		System.out.println(en.toString());
		result = userService.updateEnterpriseWorker(en);
		System.out.println(result);
//		System.out.println("用户" + nnumber + "添加");
//		if (userService.getNnumber(nnumber)) {	
//			JOptionPane.showMessageDialog(null,"添加成功","提示",JOptionPane.PLAIN_MESSAGE);
//			req.setAttribute("id", "添加成功");
//			return "index";
//		} else {
//			JOptionPane.showMessageDialog(null,"不能有相同的编号","error",JOptionPane.ERROR_MESSAGE);
//			req.setAttribute("message", "添加失败");
//			return "PortEnterpriseRegister";
//		}
		return null;
	}
	/**删除港口企业工作人员**/
	@RequestMapping("/deleteEnterpriseWorker")
	public String deleteEnterpriseWorker(String nnumber,HttpServletRequest req, HttpServletResponse rep) throws ParseException {
		int result=0;
		result = userService.deleteEnterpriseWorker(nnumber);
		/*System.out.println(ndate);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date est = format.parse(ndate);

		Enterpriseworker en = new Enterpriseworker();
		en.setNnumber(nnumber);
		en.setNname(nname);
		en.setNsex(nsex);
		en.setNdate(est);
		en.setNcall(ncall);
		en.setNaddr(naddr);
		en.setNworkemail(nworkemail);
		en.setNworkstyle(nworkstyle);
		 int result = 0; 
		System.out.println(en.toString());
		result = userService.updateEnterpriseWorker(en);
		System.out.println(result);
//		System.out.println("用户" + nnumber + "添加");
//		if (userService.getNnumber(nnumber)) {	
//			JOptionPane.showMessageDialog(null,"添加成功","提示",JOptionPane.PLAIN_MESSAGE);
//			req.setAttribute("id", "添加成功");
//			return "index";
//		} else {
//			JOptionPane.showMessageDialog(null,"不能有相同的编号","error",JOptionPane.ERROR_MESSAGE);
//			req.setAttribute("message", "添加失败");
//			return "PortEnterpriseRegister";
//		}
*/		return null;
	}
	/*企业信息浏览*/
	@RequestMapping("/enterpriseInfo")
	public void EnterpriseInfo(HttpServletRequest request, HttpServletResponse response,HttpSession session)throws IOException{
		
		String num = (String) session.getAttribute("ename"); 
		
		User portEnterprise = this.userService.enterpriseInfo(num);
		List<Propertygrid> list= new ArrayList<Propertygrid>();
		
		Propertygrid pro = new Propertygrid();
		pro.setName("企业编号");
		pro.setValue(num);
		pro.setGroup("企业信息");
		pro.setEditor("");
		list.add(pro);
		
		Propertygrid pro1 = new Propertygrid();
		pro1.setName("企业名称");
		pro1.setValue(portEnterprise.getEname());
		pro.setGroup("企业信息");
		pro1.setEditor("");
		list.add(pro1);
		
		Propertygrid pro2 = new Propertygrid();
		pro2.setName("企业代码");
		pro2.setValue(portEnterprise.getEcode());
		pro2.setGroup("企业信息");
		pro2.setEditor("");
		list.add(pro2);
		
		Propertygrid pro3 = new Propertygrid();
		pro3.setName("企业地址");
		pro3.setValue(portEnterprise.getEaddr());
		pro3.setGroup("企业信息");
		pro3.setEditor("");
		list.add(pro3);
		
		Propertygrid pro4 = new Propertygrid();
		pro4.setName("企业法人");
		pro4.setValue(portEnterprise.getElegpeople());
		pro4.setGroup("企业信息");
		pro4.setEditor("");
		list.add(pro4);
		
		Propertygrid pro5 = new Propertygrid();
		pro5.setName("注册资本");
		pro5.setValue(String.valueOf(portEnterprise.getEmoney()));
		pro5.setGroup("企业信息");
		pro5.setEditor("");
		list.add(pro5);
		
		Propertygrid pro6 = new Propertygrid();
		pro6.setName("企业类型");
		pro6.setValue(portEnterprise.getEstyle());
		pro6.setGroup("企业信息");
		pro6.setEditor("");
		list.add(pro6);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Propertygrid pro7 = new Propertygrid();
		pro7.setName("成立日期");
		pro7.setValue(format.format(portEnterprise.getEestdate()));
		pro7.setGroup("企业信息");
		pro7.setEditor("");
		list.add(pro7);
		
		Propertygrid pro8 = new Propertygrid();
		pro8.setName("证书有效期");
		pro8.setValue(format.format(portEnterprise.getEenddate()));
		pro8.setGroup("企业信息");
		pro8.setEditor("");
		list.add(pro8);
		
		Propertygrid pro9 = new Propertygrid();
		pro9.setName("证书状态");
		pro9.setValue(portEnterprise.getEcertstate());
		pro9.setGroup("企业信息");
		pro9.setEditor("");
		list.add(pro9);
		
		Map<String, Object> json = new HashMap<String, Object>();
	    json.put("rows", list);
	    response.setContentType("utf-8");
	    response.setCharacterEncoding("utf-8");
	    response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
		System.out.println(list);
	}
}
