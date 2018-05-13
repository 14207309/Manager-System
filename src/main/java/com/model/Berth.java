package com.model;

public class Berth {
    private Integer berid;

    private String bernum;

    private String bername;

    private Integer beroccupy;
    private String beroccupys;
    private String berpeople;
	public Integer getBerid() {
		return berid;
	}
	public void setBerid(Integer berid) {
		this.berid = berid;
	}
	public String getBernum() {
		return bernum;
	}
	public void setBernum(String bernum) {
		this.bernum = bernum;
	}
	public String getBername() {
		return bername;
	}
	public void setBername(String bername) {
		this.bername = bername;
	}
	public Integer getBeroccupy() {
		return beroccupy;
	}
	public void setBeroccupy(Integer beroccupy) {
		this.beroccupy = beroccupy;
	}
	public String getBeroccupys() {
		return beroccupys;
	}
	public void setBeroccupys(String beroccupys) {
		this.beroccupys = beroccupys;
	}
	public String getBerpeople() {
		return berpeople;
	}
	public void setBerpeople(String berpeople) {
		this.berpeople = berpeople;
	}
	@Override
	public String toString() {
		return "Berth [berid=" + berid + ", bernum=" + bernum + ", bername=" + bername + ", beroccupy=" + beroccupy
				+ ", beroccupys=" + beroccupys + ", berpeople=" + berpeople + "]";
	}
	public Berth(Integer berid, String bernum, String bername, Integer beroccupy, String beroccupys, String berpeople) {
		super();
		this.berid = berid;
		this.bernum = bernum;
		this.bername = bername;
		this.beroccupy = beroccupy;
		this.beroccupys = beroccupys;
		this.berpeople = berpeople;
	}
	public Berth() {
		super();
		// TODO Auto-generated constructor stub
	}

}