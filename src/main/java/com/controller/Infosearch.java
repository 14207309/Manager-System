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

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.model.Audit;
import com.model.Comment;
import com.model.Notice;
import com.model.RiskGoodsPet;
import com.service.InfoSearchService;
import com.tool.Proportion;

@Controller
@RequestMapping("/info")
public class Infosearch {

	@Autowired
	private InfoSearchService infoSearchService;

	/* 意见箱信息操作 */
	@RequestMapping("/commentinsert")
	public String Commentinsert(String cid, String cname, String cdate, String ccontext, HttpServletRequest req,
			HttpServletResponse rep) throws ParseException {
		// 创建session对象
		HttpSession session = req.getSession();
		// 把用户数据保存在session域对象中
		String ccompany = (String) session.getAttribute("ename");
		System.out.println(ccompany);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(cdate);
		Comment com = new Comment();
		com.setCcompany(ccompany);
		com.setCname(cname);
		com.setCdate(date);
		com.setCcontext(ccontext);
		com.setCflag(0);
		System.out.println(com);
		int result = 0;
		result = infoSearchService.commentinsert(com);

		return null;
	}

	@RequestMapping("/commentsearch")
	public void CommentSearch(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;

		List<Comment> list = new ArrayList<>();
		list = this.infoSearchService.commentSearch(pageindex, pagesize);
		int total = 0;
		total = this.infoSearchService.count1();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));

	}

	@RequestMapping("/commentsearch2")
	public void CommentSearch2(HttpServletRequest request, HttpServletResponse response) throws IOException {

		if (request.getParameter("cid") != null) {
			String cid = request.getParameter("cid");
			List<Comment> list = new ArrayList<>();
			list = this.infoSearchService.commentSearch2(cid);
			response.setContentType("utf-8");
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));
		}
	}

	/* 查看通过审核之后的意见信息 */
	@RequestMapping("/commentsearch3")
	public void CommentSearch3(HttpServletRequest request, HttpServletResponse response) throws IOException {

		/* String cid = request.getParameter("cid"); */
		List<Comment> list = new ArrayList<>();
		list = this.infoSearchService.commentSearch3();
		/* System.out.println(list); */
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));

	}

	@RequestMapping("/commentsearchCompany")
	public void CommentSearchCompany(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// 创建session对象
		HttpSession session = request.getSession();
		// 把用户数据保存在session域对象中
		String ccompany = (String) session.getAttribute("ename");
		System.out.println(ccompany);
		List<Comment> list = new ArrayList<>();

		list = this.infoSearchService.commentSearchCompany(ccompany);
		System.out.println(list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));

	}

	/* 意见箱内容审核及恢复 */
	@RequestMapping("/commentreply1")
	public String CommentReply(String cflag, HttpServletRequest req, HttpServletResponse rep) throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		String cid = req.getParameter("cid");

		Comment com = new Comment();
		com.setCid(Integer.valueOf(cid));
		com.setCflag(Integer.valueOf(cflag));

		int result = 0;
		result = infoSearchService.commentreply(com);
		return null;

	}

	/* 意见箱内容回复 */
	@RequestMapping("/commentreply2")
	public String CommentReplyB(String crepname, String crepdate, String crepcont, HttpServletRequest req,
			HttpServletResponse rep) throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(crepdate);

		String cid = req.getParameter("cid");
		Comment com = new Comment();
		com.setCid(Integer.valueOf(cid));
		com.setCrepname(crepname);
		com.setCrepdate(date);
		com.setCrepcont(crepcont);
		System.out.println(com);
		int result = 0;
		result = infoSearchService.Commentreply(com);
		return null;

	}
	/* 危险货物申报信息申报注册 ,保存暂不提交 */
	/*
	 * @RequestMapping("/riskgoods1") public String RiskGoodsA(String rnum,
	 * String rcompany, String rpeople, String rshipper, String rconsignee,
	 * String rcarrier, String rshipname, String rportloading, String
	 * rloadingtime, String rdischarging, String rpredeltime, String
	 * rpradeltime, String rdelived, String rgoodsstyle, String rweight, String
	 * rpettime, String rworkwharf, String rport, String rportflag, String
	 * rprin, String rprincall, String rodour, String rignitionpoint, String
	 * rtoxicity,HttpServletRequest req, HttpServletResponse rep, HttpSession
	 * session) throws ParseException {
	 * 
	 * SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); Date
	 * loadingdate = format.parse(rloadingtime); Date predeldate =
	 * format.parse(rpredeltime); Date pradeldate = format.parse(rpradeltime);
	 * Date petdate = format.parse(rpettime);
	 * 
	 * RiskGoodsPet info = new RiskGoodsPet(); info.setRurgent(0);
	 * info.setRsave(0); info.setRnum(rnum); info.setRcompany(rcompany);
	 * info.setRpeople(rpeople); info.setRshipper(rshipper);
	 * info.setRconsignee(rconsignee); info.setRcarrier(rcarrier);
	 * info.setRshipname(rshipname); info.setRportloading(rportloading);
	 * info.setRloadingtime(loadingdate); info.setRdischarging(rdischarging);
	 * info.setRpredeltime(predeldate); info.setRpradeltime(pradeldate);
	 * info.setRdelived(rdelived); info.setRgoodsstyle(rgoodsstyle);
	 * info.setRweight(Double.parseDouble(rweight)); info.setRpettime(petdate);
	 * info.setRworkwharf(rworkwharf); info.setRport(rport);
	 * info.setRportflag(rportflag); info.setRprin(rprincall);
	 * info.setRprincall(rprincall); info.setRodour(rodour);
	 * info.setRignitionpoint(Integer.parseInt(rignitionpoint));
	 * info.setRtoxicity(rtoxicity); info.setRflag(0);
	 * System.out.println(info.toString()); int result=0; result =
	 * infoSearchService.insertRiskgoods(info);
	 * 
	 * return null; }
	 */

	/* 危险货物申报信息申报注册 ,直接提交 */
	@RequestMapping("/riskgoods2")
	public String RiskGoodsB(String rnum, String rcompany, String rpeople, String rshipper, String rconsignee,
			String rcarrier, String rshipname, String rportloading, String rloadingtime, String rdischarging,
			String rpredeltime, String rpradeltime, String rdelived, String rgoodsstyle, String rweight,
			String rpettime, String rworkwharf, String rport, String rportflag, String rprin, String rprincall,
			String rodour, String rignitionpoint, String rtoxicity, HttpServletRequest req, HttpServletResponse rep,
			HttpSession session) throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date loadingdate = format.parse(rloadingtime);
		Date predeldate = format.parse(rpredeltime);
		Date pradeldate = format.parse(rpradeltime);
		Date petdate = format.parse(rpettime);

		RiskGoodsPet info = new RiskGoodsPet();
		info.setRurgent(0);
		info.setRsave(1);
		info.setRnum(rnum);
		rcompany = (String) session.getAttribute("ename");
		System.out.println(rcompany);
		info.setRcompany(rcompany);
		info.setRpeople(rpeople);
		info.setRshipper(rshipper);
		info.setRconsignee(rconsignee);
		info.setRcarrier(rcarrier);
		info.setRshipname(rshipname);
		info.setRportloading(rportloading);
		info.setRloadingtime(loadingdate);
		info.setRdischarging(rdischarging);
		info.setRpredeltime(predeldate);
		info.setRpradeltime(pradeldate);
		info.setRdelived(rdelived);
		info.setRgoodsstyle(rgoodsstyle);
		info.setRweight(Double.parseDouble(rweight));
		info.setRpettime(petdate);
		info.setRworkwharf(rworkwharf);
		info.setRport(rport);
		info.setRportflag(rportflag);
		info.setRprin(rprincall);
		info.setRprincall(rprincall);
		info.setRodour(rodour);
		info.setRignitionpoint(Double.parseDouble(rignitionpoint));
		info.setRtoxicity(rtoxicity);
		info.setQfflag(0);
		info.setQsflag(0);
		/* System.out.println(info.toString()); */
		int result = 0;
		result = infoSearchService.insertRiskgoods(info);

		return null;
	}

	/* 危险货物现场紧急审批 */
	@RequestMapping("/riskgoods3")
	public String RiskGoodsC(String rnum, String rcompany, String rpeople, String rshipper, String rconsignee,
			String rcarrier, String rshipname, String rportloading, String rloadingtime, String rdischarging,
			String rpredeltime, String rpradeltime, String rdelived, String rgoodsstyle, String rweight,
			String rpettime, String rworkwharf, String rport, String rportflag, String rprin, String rprincall,
			String rodour, String rignitionpoint, String rtoxicity, String qscompany, String qsboat, String qsrstyle,
			String qspack, String qsweight, String qsreveal, String qspica, String qspicb, String qsdate,
			String qspeople, HttpServletRequest req, HttpServletResponse rep, HttpSession session)
					throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date loadingdate = format.parse(rloadingtime);
		Date predeldate = format.parse(rpredeltime);
		Date pradeldate = format.parse(rpradeltime);
		Date petdate = format.parse(rpettime);
		Date fdate = format.parse(qsdate);

		RiskGoodsPet info = new RiskGoodsPet();
		info.setRurgent(1);// 紧急审批标志位
		info.setRsave(1);
		info.setRnum(rnum);
		info.setRcompany(rcompany);
		info.setRpeople(rpeople);
		info.setRshipper(rshipper);
		info.setRconsignee(rconsignee);
		info.setRcarrier(rcarrier);
		info.setRshipname(rshipname);
		info.setRportloading(rportloading);
		info.setRloadingtime(loadingdate);
		info.setRdischarging(rdischarging);
		info.setRpredeltime(predeldate);
		info.setRpradeltime(pradeldate);
		info.setRdelived(rdelived);
		info.setRgoodsstyle(rgoodsstyle);
		info.setRweight(Double.parseDouble(rweight));
		info.setRpettime(petdate);
		info.setRworkwharf(rworkwharf);
		info.setRport(rport);
		info.setRportflag(rportflag);
		info.setRprin(rprincall);
		info.setRprincall(rprincall);
		info.setRodour(rodour);
		info.setRignitionpoint(Double.parseDouble(rignitionpoint));
		info.setRtoxicity(rtoxicity);
		info.setQfflag(0);// 审批通过标志位
		info.setQscompany(Integer.parseInt(qscompany));
		info.setQsboat(Integer.parseInt(qsboat));
		info.setQsrstyle(Integer.parseInt(qsrstyle));
		info.setQspack(Integer.parseInt(qspack));
		info.setQsweight(Integer.parseInt(qsweight));
		info.setQsreveal(Integer.parseInt(qsreveal));
		info.setQspica(qspica);
		info.setQspicb(qspicb);
		info.setQsdate(fdate);
		info.setQspeople(qspeople);
		int result = 0;
		if ((info.getQscompany() == 1) && (info.getQsrstyle() == 1) && (info.getQspack() == 1) && (info.getQsweight() == 1)
				&& (info.getQsboat() == 1) && (info.getQsreveal() == 1) && (info.getQspica() != null)
				&& (info.getQspicb() != null)) {
			info.setQsflag(1);// 审批通过标志位
			result = infoSearchService.insertRiskgoods(info);
		} else {
			info.setQsflag(2);
			result = infoSearchService.insertRiskgoods(info);
		}

		System.out.println(info);

		return null;
	}

	/* 查询所有危险货物申报信息##针对固定企业查询 ##已提交申报 */
	@RequestMapping("/riskgoodsearch")
	public void selectriskgoods(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;

		List<RiskGoodsPet> list = new ArrayList<>();
		String s = (String) session.getAttribute("ename");
		System.out.println(s);
		list = this.infoSearchService.selectRiskgood(s, pageindex, pagesize);
		/* System.out.println(list); */
		int total = 0;
		total = this.infoSearchService.count();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
	}

	/*
	 * 查询危险货物申报信息 ##未提交申报
	 * 
	 * @RequestMapping("/riskgoodsearchNoSubmit") public void
	 * selectriskgoodsNoSubmit(HttpServletRequest request, HttpServletResponse
	 * response,HttpSession session) throws Exception {
	 * 
	 * List<RiskGoodsPet> list = new ArrayList<>(); String s = (String)
	 * session.getAttribute("ename"); System.out.println(s); list =
	 * this.infoSearchService.riskgoodsearchNosubmit(s);
	 * System.out.println(list); int total = 0; total =
	 * this.infoSearchService.count(); Map<String, Object> json = new
	 * HashMap<String, Object>();
	 * 
	 * json.put("total", total); json.put("rows", list);
	 * response.setContentType("utf-8"); response.setCharacterEncoding("utf-8");
	 * response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json,
	 * "yyyy-MM-dd")); }
	 */

	/* 查询所有危险货物申报信息 ##港口端管理查询 */
	@RequestMapping("/riskgoodsearch1")
	public void selectriskgood(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;

		List<RiskGoodsPet> list = new ArrayList<>();
		String qrytype = request.getParameter("id");
		System.out.println("id是"+qrytype);
		if(qrytype==null||qrytype.equals(""))
		{
			list = this.infoSearchService.selectRiskgoods(pageindex, pagesize);
		}else if(qrytype.equals("1")){
			list = this.infoSearchService.selectRiskgoodsUrgent(pageindex, pagesize);
		}else if(qrytype.equals("2")){
			list = this.infoSearchService.selectRiskgoodsNoAudit(pageindex, pagesize);
		}else if(qrytype.equals("3")){
			list = this.infoSearchService.selectRiskgoodsAuditing(pageindex, pagesize);
		}else if(qrytype.equals("4")){
			list = this.infoSearchService.selectRiskgoodsYesAudit(pageindex, pagesize);
		}else if(qrytype.equals("5")){
			list = this.infoSearchService.selectRiskgoodsNotAudit(pageindex, pagesize);
		}
		
		System.out.println(list);
		int total = 0;
		total = this.infoSearchService.count();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
	}

	/* 查询所有危险货物申报信息 ##港口端管理查询 */
	@RequestMapping("/riskgoodsearchRid")
	public void selectriskgoodRid(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;

		List<RiskGoodsPet> list = new ArrayList<>();
		list = this.infoSearchService.selectRiskgoodsRid(pageindex, pagesize);
		/* System.out.println(list); */
		int total = 0;
		total = this.infoSearchService.count();
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("total", total);
		json.put("rows", list);
	
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));
	}

	/* 针对固定编号查询危险货物申报信息 */
	@RequestMapping("/riskgoodsearch2")
	public void selectRnumriskgoods(HttpServletRequest request, HttpServletResponse response) throws Exception {

		if (request.getParameter("rnum") != null) {
			String rnum = request.getParameter("rnum");
			List<RiskGoodsPet> list = new ArrayList<>();
			list = this.infoSearchService.selectRnumRiskgood(rnum);
			/*
			 * int total = 0; total = this.infoSearchService.count();
			 */
			// Map<String, Object> json = new HashMap<String, Object>();

			// json.put("total", total);
			// json.put("rows", list);
			System.out.println(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));
			response.setContentType("utf-8");
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));
		}
	}

	/* 删除申报信息 */
	@RequestMapping("/deleteriskgoodsInfo")
	public String deletePortEnterpriseinfo(String rnum, HttpServletRequest req, HttpServletResponse rep)
			throws ParseException {
		int result = 0;
		System.out.println(rnum);
		result = infoSearchService.deleteRiskgoodsInfo(rnum);
		return null;
	}

	/* 一轮审批结果 */
	@RequestMapping("/fristaudit")
	public void FristAudit(String rnum, String qfcompany, String qfrstyle, String qfpack, String qfweight,
			String qfboat, String qfdate, String qfpeople, HttpServletRequest request, HttpServletResponse response)
					throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date fdate = format.parse(qfdate);

		RiskGoodsPet au = new RiskGoodsPet();
		au.setRnum(rnum);
		au.setQfcompany(Integer.parseInt(qfcompany));
		au.setQfrstyle(Integer.parseInt(qfrstyle));
		au.setQfpack(Integer.parseInt(qfpack));
		au.setQfweight(Integer.parseInt(qfweight));
		au.setQfboat(Integer.parseInt(qfboat));
		au.setQfdate(fdate);
		au.setQfpeople(qfpeople);
		System.out.println(rnum);
		/* String rnum = request.getParameter("rnum"); */
		int result = 0;
		/* 一轮审核条件都符合，则修改标志位，rflag==1，代表一轮审核通过 */
		if ((au.getQfcompany() == 1) && (au.getQfrstyle() == 1) && (au.getQfpack() == 1) && (au.getQfweight() == 1)
				&& (au.getQfboat() == 1)) {
			au.setQfflag(1);
			result = infoSearchService.firstAudit(au);
		} else {
			au.setQfflag(2);
			result = infoSearchService.firstAudit(au);
		}
		System.out.println(rnum);
		System.out.println("aaaa");

	}

	/* 二轮审批 */
	@RequestMapping("/secondaudit")
	public void SecondAudit(String rnum, String qscompany, String qsboat, String qsrstyle, String qspack,
			String qsweight, String qsreveal, String qspica, String qspicb, String qsdate, String qspeople,
			HttpServletRequest request, HttpServletResponse response) throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date fdate = format.parse(qsdate);

		RiskGoodsPet au = new RiskGoodsPet();
		au.setRnum(rnum);
		au.setQscompany(Integer.parseInt(qscompany));
		au.setQsboat(Integer.parseInt(qsboat));
		au.setQsrstyle(Integer.parseInt(qsrstyle));
		au.setQspack(Integer.parseInt(qspack));
		au.setQsweight(Integer.parseInt(qsweight));
		au.setQsreveal(Integer.parseInt(qsreveal));
		au.setQspica(qspica);
		au.setQspicb(qspicb);
		au.setQsdate(fdate);
		au.setQspeople(qspeople);
		System.out.println(au);
		System.out.println("123");
		/* String rnum = request.getParameter("rnum"); */
		int result = 0;
		/* 一轮审核条件都符合，则修改标志位，rflag==1，代表一轮审核通过 */
		if ((au.getQscompany() == 1) && (au.getQsrstyle() == 1) && (au.getQspack() == 1) && (au.getQsweight() == 1)
				&& (au.getQsboat() == 1) && (au.getQsreveal() == 1) && (au.getQspica() != null)
				&& (au.getQspicb() != null)) {
			au.setQsflag(1);
			result = infoSearchService.secondAudit(au);
		} else {
			au.setQsflag(2);
			result = infoSearchService.secondAudit(au);
		}
		System.out.println(au);
		System.out.println("aaaa");

	}

	@RequestMapping("/count")
	public void count(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<RiskGoodsPet> risk = infoSearchService.count2();
		
		Proportion proportion = new Proportion();
		
		System.out.println(risk);
		
		Map<String, Object> json = new HashMap<String, Object>();

		json.put("marks", proportion.setProportion(risk));
		json.put("rows", proportion.UrgentProportion(risk));
		json.put("value", proportion.getProportion(risk));
		System.out.println("苏夏"+json);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));

	}
	
	
	
	/* 公告信息操作 */
	@RequestMapping("/noticeinsert")
	public String noticeInsert(String notitle, String nodate, String nocontext, HttpServletRequest req,
			HttpServletResponse rep) throws ParseException {
		
		// 创建session对象
		HttpSession session = req.getSession();
		// 把用户数据保存在session域对象中
		String noname = (String) session.getAttribute("username");

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(nodate);
		String flag = req.getParameter("nflag");

		Notice not =new Notice();
		
		not.setNoname(noname);
		not.setNotitle(notitle);
		not.setNodate(date);
		not.setNocontext(nocontext);
		not.setNflag(Integer.valueOf(flag));

		int result = 0;
		result = infoSearchService.NoticeInsert(not);
		return null;
	}
	/*管理员端公告查询*/
	@RequestMapping("/noticeSearch")
	public void NoticeSearch(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;

		List<Notice> list = new ArrayList<>();
		list = this.infoSearchService.noticeSearch(pageindex, pagesize);

		Map<String, Object> json = new HashMap<String, Object>();

		//json.put("total", total);
		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));

	}
	/*已经发布的公告*/
	@RequestMapping("/noticeSearchpass")
	public void NoticeSearchPass(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int pageindex = Integer.parseInt(request.getParameter("page"));
		int pagesize = Integer.parseInt(request.getParameter("rows"));
		pageindex = (pageindex - 1) * pagesize;

		List<Notice> list = new ArrayList<>();
		list = this.infoSearchService.noticeSearchPass(pageindex, pagesize);

		Map<String, Object> json = new HashMap<String, Object>();

		json.put("rows", list);
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(json, "yyyy-MM-dd"));

	}
	
	@RequestMapping("/noticeSearchid")
	public void NoticeSearchid(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String noid= request.getParameter("noid");
		
		List<Notice> list = new ArrayList<>();
		list = this.infoSearchService.noticeSearchid(noid);
		System.out.println(list);

	
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));

	}
	
	@RequestMapping("/noticeflag")
	public void NoticeFlag(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String noid= request.getParameter("noid");
		String flag = request.getParameter("nflag");
		List<Notice> list = new ArrayList<>();
		Notice not= new Notice();
		not.setNoid(Integer.valueOf(noid));
		not.setNflag(Integer.valueOf(flag));
		int result=0;
		result=infoSearchService.noticeFlag(not);
		System.out.println(list);


	}
}
