package com.model;

import java.util.Date;

public class Enterpriseworker {
    private Integer nid;
    private String nnumber;
    private String nname;
    private String nsex;
    private Date ndate;
    private String ncall;
    private String naddr;
    private String nworkemail;
    private String nworkstyle;
	public Enterpriseworker() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Enterpriseworker [nid=" + nid + ", nnumber=" + nnumber + ", nname=" + nname + ", nsex=" + nsex
				+ ", ndate=" + ndate + ", ncall=" + ncall + ", naddr=" + naddr + ", nworkemail=" + nworkemail
				+ ", nworkstyle=" + nworkstyle + "]";
	}
	public Enterpriseworker(Integer nid, String nnumber, String nname, String nsex, Date ndate, String ncall,
			String naddr, String nworkemail, String nworkstyle) {
		super();
		this.nid = nid;
		this.nnumber = nnumber;
		this.nname = nname;
		this.nsex = nsex;
		this.ndate = ndate;
		this.ncall = ncall;
		this.naddr = naddr;
		this.nworkemail = nworkemail;
		this.nworkstyle = nworkstyle;
	}
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}
	public String getNnumber() {
		return nnumber;
	}
	public void setNnumber(String nnumber) {
		this.nnumber = nnumber;
	}
	public String getNname() {
		return nname;
	}
	public void setNname(String nname) {
		this.nname = nname;
	}
	public String getNsex() {
		return nsex;
	}
	public void setNsex(String nsex) {
		this.nsex = nsex;
	}
	public Date getNdate() {
		return ndate;
	}
	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	public String getNcall() {
		return ncall;
	}
	public void setNcall(String ncall) {
		this.ncall = ncall;
	}
	public String getNaddr() {
		return naddr;
	}
	public void setNaddr(String naddr) {
		this.naddr = naddr;
	}
	public String getNworkemail() {
		return nworkemail;
	}
	public void setNworkemail(String nworkemail) {
		this.nworkemail = nworkemail;
	}
	public String getNworkstyle() {
		return nworkstyle;
	}
	public void setNworkstyle(String nworkstyle) {
		this.nworkstyle = nworkstyle;
	}
	
	
}