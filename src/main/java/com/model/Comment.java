package com.model;

import java.util.Date;

public class Comment {
    private Integer cid;
    private String cname;
    private Date cdate;
    private String ccontext;
    private String crepname;
    private Date crepdate;
    private String crepcont;
    private String stype;
    private Integer cflag;
    private String ccompany;
	
    
	public String getCcompany() {
		return ccompany;
	}
	public void setCcompany(String ccompany) {
		this.ccompany = ccompany;
	}
	public Integer getCflag() {
		return cflag;
	}
	public void setCflag(Integer cflag) {
		this.cflag = cflag;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getCcontext() {
		return ccontext;
	}
	public void setCcontext(String ccontext) {
		this.ccontext = ccontext;
	}
	public String getCrepname() {
		return crepname;
	}
	public void setCrepname(String crepname) {
		this.crepname = crepname;
	}
	public Date getCrepdate() {
		return crepdate;
	}
	public void setCrepdate(Date crepdate) {
		this.crepdate = crepdate;
	}
	public String getCrepcont() {
		return crepcont;
	}
	public void setCrepcont(String crepcont) {
		this.crepcont = crepcont;
	}
	public String getStype() {
		return stype;
	}
	public void setStype(String stype) {
		this.stype = stype;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Comment(Integer cid, String cname, Date cdate, String ccontext, String crepname, Date crepdate,
			String crepcont, String stype, Integer cflag, String ccompany) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cdate = cdate;
		this.ccontext = ccontext;
		this.crepname = crepname;
		this.crepdate = crepdate;
		this.crepcont = crepcont;
		this.stype = stype;
		this.cflag = cflag;
		this.ccompany = ccompany;
	}
	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", cname=" + cname + ", cdate=" + cdate + ", ccontext=" + ccontext
				+ ", crepname=" + crepname + ", crepdate=" + crepdate + ", crepcont=" + crepcont + ", stype=" + stype
				+ ", cflag=" + cflag + ", ccompany=" + ccompany + "]";
	}
    
}