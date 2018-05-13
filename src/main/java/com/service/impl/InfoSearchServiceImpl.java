package com.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.InfoSearchDao;
import com.model.Comment;
import com.model.Notice;
import com.model.RiskGoodsPet;
import com.service.InfoSearchService;

@Service("infoSearchService")
public class InfoSearchServiceImpl implements InfoSearchService {
	
	@Autowired
	private InfoSearchDao infoSearchDao;
	
//	public void setDao(InfoSearchDao infoSearchDao) {
//		this.infoSearchDao = infoSearchDao;
//	}
	
	/*添加申报信息*/
	@Override
	public int insertRiskgoods(RiskGoodsPet info) {
		return infoSearchDao.insertRiskgood(info);
	}
	
	/*企业端查询所有危险货物申报信息*/
	@Override
	public List<RiskGoodsPet> selectRiskgood(String s,int pageindex, int pagesize) {
		System.out.println("王八dan"+s);
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgood(s,pageindex,pagesize);
		System.out.println("王八"+riskGoodsPet);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}
	/*港口端查询申报信息*/
	@Override
	public List<RiskGoodsPet> selectRiskgoods(int pageindex, int pagesize) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgoods(pageindex,pagesize);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}

	@Override
	public List<RiskGoodsPet> selectRiskgoodsRid(int pageindex, int pagesize) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgoodsRid(pageindex,pagesize);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}
	

	
	@Override
	public int count() {
		return infoSearchDao.count();
	}
	
	/*根据Rnum查询申报信息*/
	@Override
	public List<RiskGoodsPet> selectRnumRiskgood(String rnum) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRnumRiskgood(rnum);
		if(riskGoodsPet.get(0).getRurgent()==1){
			riskGoodsPet.get(0).setRurgents("是");
		}else{
			riskGoodsPet.get(0).setRurgents("否");
		}
		return riskGoodsPet;
	}
	
	/*一轮审批*/
	@Override
	public int firstAudit(RiskGoodsPet au) {
		System.out.println(au);
		return infoSearchDao.firstAuditdao(au);
	}
	/*二轮审批*/
	@Override
	public int secondAudit(RiskGoodsPet au) {
		System.out.println(au);
		return infoSearchDao.secondAuditdao(au);
	}
	
	/*意见箱操作信息*/
	@Override
	public int commentinsert(Comment com) {
		return infoSearchDao.commentinsert(com);
	}
	
	@Override
	public List<Comment> commentSearch(int pageindex, int pagesize) {
		List<Comment> comment= infoSearchDao.commentSearch(pageindex, pagesize);
		for(int i=0;i<comment.size();i++){
			if(comment.get(i).getCflag()==1){
				comment.get(i).setStype("通过");
			}else{
				comment.get(i).setStype("未通过");
			}
		}
		return comment;
	}

	@Override
	public int count1() {
		return infoSearchDao.count1();
	}

	@Override
	public List<Comment> commentSearch2(String cid) {
		return infoSearchDao.commentSearch2(cid);
	}

	@Override
	public List<RiskGoodsPet> riskgoodsearchNosubmit(String s) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.riskgoodsearchNoSubmit(s);
		return riskGoodsPet;
	}

	@Override
	public int deleteRiskgoodsInfo(String rnum) {
		
		return infoSearchDao.deleteriskgoodsInfo(rnum);
	}

	@Override
	public int commentreply(Comment com) {
		System.out.println(com);
		return infoSearchDao.commentReply(com);
	}

	@Override
	public int Commentreply(Comment com) {
		// TODO Auto-generated method stub
		return infoSearchDao.CommentReplyA(com);
	}

	@Override
	public List<Comment> commentSearch3() {
		// TODO Auto-generated method stub
		return infoSearchDao.commentSearchFlag();
	}

	@Override
	public List<Comment> commentSearchCompany(String ccompany) {
		List<Comment> comment = infoSearchDao.CommentSearchCompany(ccompany);
		for(int i=0;i<comment.size();i++){
			if(comment.get(i).getCflag()==1){
				comment.get(i).setStype("通过");
			}else{
				comment.get(i).setStype("未通过");
			}
		}
		return comment;
	}

	@Override
	public List<RiskGoodsPet> count2() {
		
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.count2();
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}

	@Override
	public int NoticeInsert(Notice not) {
		return infoSearchDao.noticeInsert(not);
	}

	@Override
	public List<Notice> noticeSearch(int pageindex, int pagesize) {
		List<Notice> notice= infoSearchDao.NoticeSearch(pageindex, pagesize);
		for(int i=0;i<notice.size();i++){
			if(notice.get(i).getNflag()==1){
				notice.get(i).setNflags("已发布");
			}else{
				notice.get(i).setNflags("已撤销");
			}
		}
		return notice;
	}

	@Override
	public List<Notice> noticeSearchid(String noid) {
		List<Notice> notice= infoSearchDao.NoticeSearchid(noid);
		return notice;
	}

	@Override
	public int noticeFlag(Notice not) {
		return infoSearchDao.NoticeFlag(not);
	}

	@Override
	public List<Notice> noticeSearchPass(int pageindex, int pagesize) {
		List<Notice> notice= infoSearchDao.NoticeSearchPass(pageindex, pagesize);
		return notice;
	}

	@Override
	public List<RiskGoodsPet> selectRiskgoodsUrgent(int pageindex, int pagesize) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgoodsUrgent(pageindex,pagesize);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}

	@Override
	public List<RiskGoodsPet> selectRiskgoodsNoAudit(int pageindex, int pagesize) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgoodsNoAudit(pageindex,pagesize);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}

	@Override
	public List<RiskGoodsPet> selectRiskgoodsAuditing(int pageindex, int pagesize) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgoodsAuditing(pageindex,pagesize);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}

	@Override
	public List<RiskGoodsPet> selectRiskgoodsYesAudit(int pageindex, int pagesize) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgoodsYesAudit(pageindex,pagesize);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}

	@Override
	public List<RiskGoodsPet> selectRiskgoodsNotAudit(int pageindex, int pagesize) {
		List<RiskGoodsPet> riskGoodsPet = infoSearchDao.selectRiskgoodsNotAudit(pageindex,pagesize);
		for(int i=0;i<riskGoodsPet.size();i++){
			if((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==0)){
				riskGoodsPet.get(i).setType("未审核");
			}else if((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==1)){
				riskGoodsPet.get(i).setType("已通过");
			}else if(((riskGoodsPet.get(i).getQfflag()==1)&&(riskGoodsPet.get(i).getQsflag()==0))||((riskGoodsPet.get(i).getQfflag()==0)&&(riskGoodsPet.get(i).getQsflag()==1))){
				riskGoodsPet.get(i).setType("审核中...");
			}else{
				riskGoodsPet.get(i).setType("未通过");
			}
		}
		
		for(int j=0;j<riskGoodsPet.size();j++){
			if(riskGoodsPet.get(j).getRurgent()==1){
				riskGoodsPet.get(j).setRurgents("是");
			}else{
				riskGoodsPet.get(j).setRurgents("否");
			}
		}
		return riskGoodsPet;
	}



}
