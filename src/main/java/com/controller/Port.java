package com.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.model.Berth;
import com.model.Comment;
import com.service.PortService;

@Controller
@RequestMapping("/port")
public class Port {

	@Autowired
	private PortService portService;
	/*泊位查询*/
	@RequestMapping("/portberthsearch")
	public void BerthSearch(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;
		
		List<Berth> list = new ArrayList<>();
		list = this.portService.berthSearch(pageindex,pagesize);
		int total = 0;
		total = this.portService.count1();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));

	}
	
	/*泊位信息查询*/
	@RequestMapping("/berthmaneager")
	public void BerthManeager(HttpServletRequest request, HttpServletResponse response) throws IOException {

		if (request.getParameter("berid") != null) {
			String berid = request.getParameter("berid");
			List<Berth> list = new ArrayList<>();
			list = this.portService.Berthsearchid(berid);
			response.setContentType("utf-8");
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));
		}
	}
	
	/*泊位状态更新*/
	@RequestMapping("/berthstate")
	public void BerthState(HttpServletRequest request, HttpServletResponse response) throws IOException {

			String berid = request.getParameter("berid");
			
			Berth berth = new Berth();
			berth.setBerid(Integer.valueOf(berid));
			berth.setBeroccupy(Integer.valueOf(request.getParameter("beroccupy")));
			
			int result=0;
			result = portService.BerthState(berth);
	}
	/*泊位状态更新*/
	@RequestMapping("/addberth")
	public void addBerth(HttpServletRequest request, HttpServletResponse response) throws IOException {

			Berth berth = new Berth();
			berth.setBernum(request.getParameter("bernum"));
			berth.setBername(request.getParameter("bername"));
			berth.setBeroccupy(Integer.valueOf(request.getParameter("beroccupy")));
			berth.setBerpeople(request.getParameter("berpeople"));
			
			int result=0;
			result = portService.BerthStateA(berth);
	}
	
	
	@RequestMapping("/deleteberth")
	public String deleteBerth(String bernum,HttpServletRequest req, HttpServletResponse rep) throws ParseException {
		
		int result=0;
		result = portService.deleteberth(bernum);
		
		return null;
	}
}
