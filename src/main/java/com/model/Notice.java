package com.model;

import java.util.Date;

public class Notice {
    private Integer noid;
    private String noname;
    private String notitle;
    private Date nodate;
    private String nocontext;
    private Integer nflag;
    private String nflags;
	public Integer getNoid() {
		return noid;
	}
	public void setNoid(Integer noid) {
		this.noid = noid;
	}
	public String getNoname() {
		return noname;
	}
	public void setNoname(String noname) {
		this.noname = noname;
	}
	public String getNotitle() {
		return notitle;
	}
	public void setNotitle(String notitle) {
		this.notitle = notitle;
	}
	public Date getNodate() {
		return nodate;
	}
	public void setNodate(Date nodate) {
		this.nodate = nodate;
	}
	public String getNocontext() {
		return nocontext;
	}
	public void setNocontext(String nocontext) {
		this.nocontext = nocontext;
	}
	public Integer getNflag() {
		return nflag;
	}
	public void setNflag(Integer nflag) {
		this.nflag = nflag;
	}
	public String getNflags() {
		return nflags;
	}
	public void setNflags(String nflags) {
		this.nflags = nflags;
	}
	public Notice(Integer noid, String noname, String notitle, Date nodate, String nocontext, Integer nflag,
			String nflags) {
		super();
		this.noid = noid;
		this.noname = noname;
		this.notitle = notitle;
		this.nodate = nodate;
		this.nocontext = nocontext;
		this.nflag = nflag;
		this.nflags = nflags;
	}
	@Override
	public String toString() {
		return "Notice [noid=" + noid + ", noname=" + noname + ", notitle=" + notitle + ", nodate=" + nodate
				+ ", nocontext=" + nocontext + ", nflag=" + nflag + ", nflags=" + nflags + "]";
	}
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
    
    
   
}