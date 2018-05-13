package com.model;

import java.util.Date;

public class News {
    private Integer neid;
    private String nename;
    private String netitle;
    private Date nedate;
    private String necontext;
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getNeid() {
		return neid;
	}
	public void setNeid(Integer neid) {
		this.neid = neid;
	}
	public String getNename() {
		return nename;
	}
	public void setNename(String nename) {
		this.nename = nename;
	}
	public String getNetitle() {
		return netitle;
	}
	public void setNetitle(String netitle) {
		this.netitle = netitle;
	}
	public Date getNedate() {
		return nedate;
	}
	public void setNedate(Date nedate) {
		this.nedate = nedate;
	}
	public String getNecontext() {
		return necontext;
	}
	public void setNecontext(String necontext) {
		this.necontext = necontext;
	}
	public News(Integer neid, String nename, String netitle, Date nedate, String necontext) {
		super();
		this.neid = neid;
		this.nename = nename;
		this.netitle = netitle;
		this.nedate = nedate;
		this.necontext = necontext;
	}
	@Override
	public String toString() {
		return "News [neid=" + neid + ", nename=" + nename + ", netitle=" + netitle + ", nedate=" + nedate
				+ ", necontext=" + necontext + "]";
	}
    
    
}