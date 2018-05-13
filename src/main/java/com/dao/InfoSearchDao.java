package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.Comment;
import com.model.Notice;
import com.model.RiskGoodsPet;

public interface InfoSearchDao {
	
	/*危险货物申报*/
	public int insertRiskgood(RiskGoodsPet info);
	public List<RiskGoodsPet> selectRiskgood(@Param("s")String s,@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public List<RiskGoodsPet> selectRiskgoods(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public List<RiskGoodsPet> selectRiskgoodsRid(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public int count();

	/*危险货物审批操作*/
	public List<RiskGoodsPet> selectRnumRiskgood(String rnum);
	
	public int firstAuditdao(RiskGoodsPet au);
	public int secondAuditdao(RiskGoodsPet au);
	
	/*意见箱操作*/
	public List<Comment> commentSearch(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public int count1();
	public List<Comment> commentSearch2(String cid);
	public int commentinsert(Comment com);
	public List<RiskGoodsPet> riskgoodsearchNoSubmit(String s);
	
	/*港口管理员操作*/
	public int deleteriskgoodsInfo(String rnum);
	public int commentReply(Comment com);
	public int CommentReplyA(Comment com);
	public List<Comment> commentSearchFlag();
	public List<Comment> CommentSearchCompany(String ccompany);
	public List<RiskGoodsPet> count2();
	/*公告操作*/
	public int noticeInsert(Notice not);
	public List<Notice> NoticeSearch(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public List<Notice> NoticeSearchid(String noid);
	public int NoticeFlag(Notice not);
	public List<Notice> NoticeSearchPass(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	
	
	public List<RiskGoodsPet> selectRiskgoodsUrgent(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public List<RiskGoodsPet> selectRiskgoodsAuditing(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public List<RiskGoodsPet> selectRiskgoodsYesAudit(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public List<RiskGoodsPet> selectRiskgoodsNotAudit(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	public List<RiskGoodsPet> selectRiskgoodsNoAudit(@Param("pageindex")int pageindex, @Param("pagesize")int pagesize);
	
}
