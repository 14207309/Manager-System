package com.model;

import java.util.Date;

public class Portworker {
	private Integer wid;
	private String wnumber;
	private String wpassword;
	private String wname;
	private String wsex;
	private Date wbirth;
	private String wcall;
	private String waddr;
	private String wqq;
	private String wechat;
	private String wworkemail;
	private String wworkstate;
	private int wworkstyle;
	private Enterpriseworker enterpriseworker;
	private PortEnterprise portEnterprise;

	public Enterpriseworker getEnterpriseworker() {
		return enterpriseworker;
	}

	public void setEnterpriseworker(Enterpriseworker enterpriseworker) {
		this.enterpriseworker = enterpriseworker;
	}

	public Portworker() {
		super();

	}

	@Override
	public String toString() {
		return "Portworker [wid=" + wid + ", wnumber=" + wnumber + ", wpassword=" + wpassword + ", wname=" + wname
				+ ", wsex=" + wsex + ", wbirth=" + wbirth + ", wcall=" + wcall + ", waddr=" + waddr + ", wqq=" + wqq
				+ ", wechat=" + wechat + ", wworkemail=" + wworkemail + ", wworkstate=" + wworkstate + ", wworkstyle="
				+ wworkstyle + "]";
	}

	public Portworker(Integer wid, String wnumber, String wpassword, String wname, String wsex, Date wbirth,
			String wcall, String waddr, String wqq, String wechat, String wworkemail, String wworkstate,
			int wworkstyle) {
		super();
		this.wid = wid;
		this.wnumber = wnumber;
		this.wpassword = wpassword;
		this.wname = wname;
		this.wsex = wsex;
		this.wbirth = wbirth;
		this.wcall = wcall;
		this.waddr = waddr;
		this.wqq = wqq;
		this.wechat = wechat;
		this.wworkemail = wworkemail;
		this.wworkstate = wworkstate;
		this.wworkstyle = wworkstyle;
	}

	public Integer getWid() {
		return wid;
	}

	public void setWid(Integer wid) {
		this.wid = wid;
	}

	public String getWnumber() {
		return wnumber;
	}

	public void setWnumber(String wnumber) {
		this.wnumber = wnumber;
	}

	public String getWpassword() {
		return wpassword;
	}

	public void setWpassword(String wpassword) {
		this.wpassword = wpassword;
	}

	public String getWname() {
		return wname;
	}

	public void setWname(String wname) {
		this.wname = wname;
	}

	public String getWsex() {
		return wsex;
	}

	public void setWsex(String wsex) {
		this.wsex = wsex;
	}

	public Date getWbirth() {
		return wbirth;
	}

	public void setWbirth(Date wbirth) {
		this.wbirth = wbirth;
	}

	public String getWcall() {
		return wcall;
	}

	public void setWcall(String wcall) {
		this.wcall = wcall;
	}

	public String getWaddr() {
		return waddr;
	}

	public void setWaddr(String waddr) {
		this.waddr = waddr;
	}

	public String getWqq() {
		return wqq;
	}

	public void setWqq(String wqq) {
		this.wqq = wqq;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	public String getWworkemail() {
		return wworkemail;
	}

	public void setWworkemail(String wworkemail) {
		this.wworkemail = wworkemail;
	}

	public String getWworkstate() {
		return wworkstate;
	}

	public void setWworkstate(String wworkstate) {
		this.wworkstate = wworkstate;
	}

	public int getWworkstyle() {
		return wworkstyle;
	}

	public void setWworkstyle(int wworkstyle) {
		this.wworkstyle = wworkstyle;
	}

}
