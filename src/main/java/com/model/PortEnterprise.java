package com.model;

import java.util.Date;

public class PortEnterprise {
	private Integer eid;
	private String enumber;
	private String epassword;
	private String ename;
	private String ecode;
	private String eaddr;
	private String elegpeople;
	private Double emoney;
	private String estyle;
	private Date eestdate;
	private Date eenddate;
	private String ecertstate;
	private Integer eflag;
	private String type;



	@Override
	public String toString() {
		return "PortEnterprise [eid=" + eid + ", enumber=" + enumber + ", epassword=" + epassword + ", ename=" + ename
				+ ", ecode=" + ecode + ", eaddr=" + eaddr + ", elegpeople=" + elegpeople + ", emoney=" + emoney
				+ ", estyle=" + estyle + ", eestdate=" + eestdate + ", eenddate=" + eenddate + ", ecertstate="
				+ ecertstate + ", eflag=" + eflag + ", type=" + type + "]";
	}

	public PortEnterprise(Integer eid, String enumber, String epassword, String ename, String ecode, String eaddr,
			String elegpeople, Double emoney, String estyle, Date eestdate, Date eenddate, String ecertstate,
			Integer eflag, String type) {
		super();
		this.eid = eid;
		this.enumber = enumber;
		this.epassword = epassword;
		this.ename = ename;
		this.ecode = ecode;
		this.eaddr = eaddr;
		this.elegpeople = elegpeople;
		this.emoney = emoney;
		this.estyle = estyle;
		this.eestdate = eestdate;
		this.eenddate = eenddate;
		this.ecertstate = ecertstate;
		this.eflag = eflag;
		this.type = type;
	}

	public PortEnterprise() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public String getEnumber() {
		return enumber;
	}

	public void setEnumber(String enumber) {
		this.enumber = enumber;
	}

	public String getEpassword() {
		return epassword;
	}

	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEcode() {
		return ecode;
	}

	public void setEcode(String ecode) {
		this.ecode = ecode;
	}

	public String getEaddr() {
		return eaddr;
	}

	public void setEaddr(String eaddr) {
		this.eaddr = eaddr;
	}

	public String getElegpeople() {
		return elegpeople;
	}

	public void setElegpeople(String elegpeople) {
		this.elegpeople = elegpeople;
	}

	public Double getEmoney() {
		return emoney;
	}

	public void setEmoney(Double emoney) {
		this.emoney = emoney;
	}

	public String getEstyle() {
		return estyle;
	}

	public void setEstyle(String estyle) {
		this.estyle = estyle;
	}

	public Date getEestdate() {
		return eestdate;
	}

	public void setEestdate(Date eestdate) {
		this.eestdate = eestdate;
	}

	public Date getEenddate() {
		return eenddate;
	}

	public void setEenddate(Date eenddate) {
		this.eenddate = eenddate;
	}

	public String getEcertstate() {
		return ecertstate;
	}

	public void setEcertstate(String ecertstate) {
		this.ecertstate = ecertstate;
	}

	public Integer getEflag() {
		return eflag;
	}

	public void setEflag(Integer eflag) {
		this.eflag = eflag;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}