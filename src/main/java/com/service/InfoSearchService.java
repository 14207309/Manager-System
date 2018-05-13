package com.service;

import java.util.List;

import com.model.Comment;
import com.model.Notice;
import com.model.RiskGoodsPet;

public interface InfoSearchService {

	int insertRiskgoods(RiskGoodsPet info);
	/*企业端查询*/
	List<RiskGoodsPet> selectRiskgood(String s, int pageindex, int pagesize);
	/*, int pageindex, int pagesize*/
	/*港口端查询*/
	List<RiskGoodsPet> selectRiskgoods(int pageindex, int pagesize);
	public int count();

	/*List<RiskGoodsPet> selectRnumRiskgood();*/

	List<RiskGoodsPet> selectRnumRiskgood(String rnum);
	
	int firstAudit(RiskGoodsPet au);
	int secondAudit(RiskGoodsPet au);
	
	int commentinsert(Comment com);
	List<RiskGoodsPet> riskgoodsearchNosubmit(String s);
	int deleteRiskgoodsInfo(String rnum);
	List<Comment> commentSearch2(String cid);

	
	
	List<Comment> commentSearch(int pageindex, int pagesize);
	int count1();
	//List<Comment> commentreply(Comment com);
	int commentreply(Comment com);
	int Commentreply(Comment com);
	List<Comment> commentSearch3();
	List<Comment> commentSearchCompany(String ccompany);
	List<RiskGoodsPet> selectRiskgoodsRid(int pageindex, int pagesize);
	List<RiskGoodsPet> count2();
	int NoticeInsert(Notice not);
	List<Notice> noticeSearch(int pageindex, int pagesize);
	List<Notice> noticeSearchid(String noid);
	int noticeFlag(Notice not);
	List<Notice> noticeSearchPass(int pageindex, int pagesize);

	List<RiskGoodsPet> selectRiskgoodsUrgent(int pageindex, int pagesize);
	List<RiskGoodsPet> selectRiskgoodsNoAudit(int pageindex, int pagesize);
	List<RiskGoodsPet> selectRiskgoodsAuditing(int pageindex, int pagesize);
	List<RiskGoodsPet> selectRiskgoodsYesAudit(int pageindex, int pagesize);
	List<RiskGoodsPet> selectRiskgoodsNotAudit(int pageindex, int pagesize);


}
