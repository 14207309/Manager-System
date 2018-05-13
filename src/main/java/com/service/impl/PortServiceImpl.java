package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.dao.PortDao;
import com.model.Berth;
import com.model.Comment;
import com.service.PortService;

@Service("portService")
public class PortServiceImpl implements PortService {
	
	@Autowired
	/*@Resource(name = "IPortworkerDao")*/
	private PortDao dao;

	@Override
	public List<Berth> berthSearch(int pageindex, int pagesize) {
		List<Berth> berth = dao.BerthSearch(pageindex,pagesize);
		for(int i=0;i<berth.size();i++){
			if(berth.get(i).getBeroccupy()==1){
				berth.get(i).setBeroccupys("可用");
			}else if(berth.get(i).getBeroccupy()==2){
				berth.get(i).setBeroccupys("维护状态");
			}else{
				berth.get(i).setBeroccupys("已占用");
			}
		}
		return berth;
	}

	@Override
	public int count1() {
		return dao.count();
	}

	@Override
	public List<Berth> Berthsearchid(String berid) {
		return dao.berthSearchid(berid);
	}

	@Override
	public int BerthState(Berth berth) {
		return dao.berthState(berth);
	}

	@Override
	public int BerthStateA(Berth berth) {
		return dao.berthStateA(berth);
	}

	@Override
	public int deleteberth(String bernum) {
		return dao.deleteberth(bernum);
	}


	
}
