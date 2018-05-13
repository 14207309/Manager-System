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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.model.Enterpriseworker;
import com.model.PortEnterprise;
import com.model.Portworker;
import com.model.RiskGoodsPet;
import com.service.IPortworkerService;

/*港口管理部门端控制类，实现企业端的登录，注册，查询等一些列功能*/
@Controller
@RequestMapping("/test2")
public class Login2 {

	@Autowired
	/* @Resource(name="portworkerService") */
	// private IUserService userService;
	private IPortworkerService portworkerService;
	/*
	 * public void setService(IPortworkerService portworkerService) {
	 * //this.userService = userService; this.portworkerService =
	 * portworkerService; }
	 */

	/* 港口用户登录 */
	@RequestMapping("/login2")
	public ModelAndView handleRequest2(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		ModelAndView mv = new ModelAndView();

		String username = String.valueOf(request.getParameter("username"));
		String password = String.valueOf(request.getParameter("password"));
		int style = Integer.valueOf(request.getParameter("style"));
		// String style = String.valueOf(request.getParameter(""));
		List<Portworker> list = new ArrayList<>();
		list = this.portworkerService.loginService2(username);
		System.out.println(list.get(0).getWpassword());
		System.out.println(list.get(0).getWworkstyle());

		if (list.get(0).getWpassword().equals(password)) {
			if (list.get(0).getWworkstyle() == style) {
				if (list.get(0).getWworkstyle() == 0) {
					System.out.println("用户登录成功");
					session.setAttribute("username", username);
					session.setAttribute("pass1", list.get(0).getWpassword());
					mv.setViewName("PortAdmin");
				} else if (list.get(0).getWworkstyle() == 1) {
					session.setAttribute("username", username);
					session.setAttribute("pass2", list.get(0).getWpassword());
					mv.setViewName("PortUser");
				} else if (list.get(0).getWworkstyle() == 2) {
					session.setAttribute("username", username);
					session.setAttribute("pass3", list.get(0).getWpassword());
					mv.setViewName("PortUser2");
				}
			} else {
				System.out.println("用户登录失败");
				JOptionPane.showMessageDialog(null, "用户类型错误", "提示", JOptionPane.PLAIN_MESSAGE);
				mv.setViewName("redirect:../index.jsp");
			}
		} else {
			System.out.println("用户登录失败");
			JOptionPane.showMessageDialog(null, "密码错误", "提示", JOptionPane.PLAIN_MESSAGE);
			mv.setViewName("redirect:../index.jsp");
		}
		return mv;
	}

	@RequestMapping("/password")
	public void revisePassword(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 创建session对象
		HttpSession session = request.getSession();
		// 把用户数据保存在session域对象中
		/*String pass2 = (String) session.getAttribute("pass2");*/
		String username=(String) session.getAttribute("username");
		System.out.println(username+"suxiaop");
		/*ModelAndView mv = new ModelAndView();*/
		String pass = request.getParameter("Pass");
		String newPass = request.getParameter("NewPass");
		String repass = request.getParameter("RePass");
		System.out.println(pass);
		System.out.println(newPass);
		System.out.println(repass);
		
		Portworker worker=new Portworker();
		if (newPass.equals(repass)) {
			if (newPass.equals(pass)) {
				JOptionPane.showMessageDialog(null, "与原来的吗相同，请重新输入", "提示", JOptionPane.PLAIN_MESSAGE);
				/*mv.setViewName("redirect:../jsp/PortUser.jsp");*/
			} else {
				JOptionPane.showMessageDialog(null, "修改成功", "提示", JOptionPane.PLAIN_MESSAGE);
				worker.setWpassword(newPass);
				portworkerService.revisePass(newPass,username);
			}
		} else {
			JOptionPane.showMessageDialog(null, "两次输入密码不一致，重新输入", "提示", JOptionPane.PLAIN_MESSAGE);
			/*mv.setViewName("redirect:../jsp/PortUser.jsp");*/
		}
	}

	/* 查询驻港企业相关工作人员 */
	@RequestMapping("/finduser")
	public void findUser(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;

		List<Enterpriseworker> list = new ArrayList<>();
		list = this.portworkerService.findUser(pageindex, pagesize);
		int total = 0;
		total = this.portworkerService.count();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
	}

	/* 查询驻港企业相关工作人员 */
	@RequestMapping("/findusertrans")
	public void findEnterpriseWorkertrans(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Enterpriseworker> list = new ArrayList<>();
		list = this.portworkerService.findEnterpriseWorkerTrans();
		int total = 0;
		total = this.portworkerService.count();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
	}

	/****** 查询驻港企业相关信息 ******/
	@RequestMapping("/portEnterpriseinfo")
	public void portEnterpriseinfo(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<PortEnterprise> list = new ArrayList<>();
		list = this.portworkerService.portEnterpriseinfo();
		int total = 0;
		total = this.portworkerService.count1();

		Map<String, Object> json = new HashMap<String, Object>();
		json.put("total", total);
		json.put("rows", list);

		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
	}

	/****** 查询驻港企业相关信息 ###针对编号 ******/
	@RequestMapping("/portEnterpriseinfo2")
	public void portEnterpriseinfo2(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println(request.getParameter("enumber"));

		if (request.getParameter("enumber") != null) {
			String wnum = request.getParameter("enumber");

			List<PortEnterprise> list = new ArrayList<>();
			list = this.portworkerService.selectportEnterpriseinfo(wnum);

			System.out.println(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));
			response.setContentType("utf-8");
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));
		}
	}

	/* 删除港口企业信息 */
	@RequestMapping("/deleteportEnterpriseinfo")
	public String deletePortEnterpriseinfo(String enumber, HttpServletRequest req, HttpServletResponse rep)
			throws ParseException {
		int result = 0;
		System.out.println(enumber);
		result = portworkerService.deletePortEnterpriseinfo(enumber);
		return null;
	}

	/* 港口企业信息审核提交 */
	@RequestMapping("/portEnterpriseinfo3")
	public void insertportEnterpriseinfo(String ecertstate, String espack, HttpServletRequest req,
			HttpServletResponse rep, HttpSession session) throws ParseException {

		System.out.println(req.getParameter("enumber"));

		int eflag = Integer.parseInt(espack);
		PortEnterprise port = new PortEnterprise();
		String enumber = req.getParameter("enumber");
		port.setEnumber(enumber);
		port.setEcertstate(ecertstate);
		port.setEflag(eflag);

		System.out.println(port);

		portworkerService.submitPortEnterpriseinfo(port);

	}

	/* 查询相关工作人员 */
	@RequestMapping("/porkWorker")
	public void selectporkWorker(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Portworker> list = new ArrayList<>();
		list = this.portworkerService.selectPorkorker();
		int total = 0;
		total = this.portworkerService.count();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
	}

	/** 添加港口工作人员 **/
	@RequestMapping("/addportWorker")
	public void insertporkWorker(String wnumber, String wname, String wsex, String wbirth, String wcall, String waddr,
			String wqq, String wechat, String wworkemail, String wworkstate, String wworkstyle, HttpServletRequest req,
			HttpServletResponse rep, HttpSession session) throws ParseException {

		System.out.println(wbirth);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date est = format.parse(wbirth);

		Portworker port = new Portworker();
		port.setWnumber(wnumber);
		port.setWpassword("123");
		port.setWname(wname);
		port.setWsex(wsex);
		port.setWbirth(est);
		port.setWcall(wcall);
		port.setWaddr(waddr);
		port.setWqq(wqq);
		port.setWechat(wechat);
		port.setWworkemail(wworkemail);
		port.setWworkstate(wworkstate);
		port.setWworkstyle(Integer.parseInt(wworkstyle));
		System.out.println(port);
		/*
		 * String s = (String) session.getAttribute("ename");
		 */
		portworkerService.insertPortWorker(port);
		/*
		 * if (portworkerService.getWnumber(wnumber)) {
		 * 
		 * JOptionPane.showMessageDialog(null,"添加成功","提示",JOptionPane.
		 * PLAIN_MESSAGE); req.setAttribute("id", "修改成功"); } else {
		 * JOptionPane.showMessageDialog(null,"不能有相同的编号","error",JOptionPane.
		 * ERROR_MESSAGE); req.setAttribute("message", "添加失败"); }
		 */
	}

	/* 修改港口工作人员信息 */
	@RequestMapping("/updateportWorker")
	public String updatePortWorker(String wnumber, String wname, String wsex, String wbirth, String wcall, String waddr,
			String wqq, String wechat, String wworkemail, String wworkstate, String wworkstyle, HttpServletRequest req,
			HttpServletResponse rep) throws ParseException {

		System.out.println(wbirth);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date est = format.parse(wbirth);

		Portworker port = new Portworker();
		port.setWnumber(wnumber);
		port.setWname(wname);
		port.setWsex(wsex);
		port.setWbirth(est);
		port.setWcall(wcall);
		port.setWaddr(waddr);
		port.setWqq(wqq);
		port.setWechat(wechat);
		port.setWworkemail(wworkemail);
		port.setWworkstate(wworkstate);
		port.setWworkstyle(Integer.parseInt(wworkstyle));
		int result = 0;
		System.out.println(port.toString());
		result = portworkerService.updateportWorker(port);
		System.out.println(result);
		return null;
	}

	@RequestMapping("/deleteportWorker")
	public String deletePortWorker(String wnumber, HttpServletRequest req, HttpServletResponse rep)
			throws ParseException {
		int result = 0;
		result = portworkerService.deleteportWorker(wnumber);

		return null;
	}

	/**
	 * 获取验证码
	 * 
	 * @param response
	 * @param session
	 */
	@RequestMapping("/getVerifyCode")
	public void generate(HttpServletResponse response, HttpSession session) {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		String verifyCodeValue = drawImg(output);

		session.setAttribute("verifyCodeValue", verifyCodeValue);

		try {
			ServletOutputStream out = response.getOutputStream();
			output.writeTo(out);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 绘画验证码
	 * 
	 * @param output
	 **/
	private String drawImg(ByteArrayOutputStream output) {
		String code = "";
		// 随机产生4个字符
		for (int i = 0; i < 4; i++) {
			code += randomChar();
		}
		int width = 50;
		int height = 20;
		BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
		Font font = new Font("Times New Roman", Font.PLAIN, 12);
		// 调用Graphics2D绘画验证码
		Graphics2D g = bi.createGraphics();
		g.setFont(font);
		Color color = new Color(66, 2, 82);
		g.setColor(color);
		g.setBackground(new Color(226, 226, 240));
		g.clearRect(0, 0, width, height);
		FontRenderContext context = g.getFontRenderContext();
		Rectangle2D bounds = font.getStringBounds(code, context);
		double x = (width - bounds.getWidth()) / 2;
		double y = (height - bounds.getHeight()) / 2;
		double ascent = bounds.getY();
		double baseY = y - ascent;
		g.drawString(code, (int) x, (int) baseY);
		g.dispose();
		try {
			ImageIO.write(bi, "jpg", output);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return code;
	}

	/**
	 * 随机参数一个字符
	 * 
	 * @return
	 */
	private char randomChar() {
		Random r = new Random();
		String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
		return s.charAt(r.nextInt(s.length()));
	}

}
