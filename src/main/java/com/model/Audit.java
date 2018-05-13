package com.model;

import java.util.Date;

public class Audit {
    
	private Integer qid;
	private Integer qfcompany;
    private Integer qfrstyle;
    private Integer qfpack;
    private Integer qfweight;
    private Integer qfboat;
    private Date qfdate;
    private String qfpeople;
    private Integer qscompany;
    private Integer qsboat;
    private Integer qsrstyle;
    private Integer qspack;
    private Integer qsweight;
    private Integer qsreveal;
    private String qspica;
    private String qspicb;
    private Date qsdate;
    private String qspeople;
    
	public Integer getQid() {
		return qid;
	}
	public void setQid(Integer qid) {
		this.qid = qid;
	}
	public Integer getQfcompany() {
		return qfcompany;
	}
	public void setQfcompany(Integer qfcompany) {
		this.qfcompany = qfcompany;
	}
	public Integer getQfrstyle() {
		return qfrstyle;
	}
	public void setQfrstyle(Integer qfrstyle) {
		this.qfrstyle = qfrstyle;
	}
	public Integer getQfpack() {
		return qfpack;
	}
	public void setQfpack(Integer qfpack) {
		this.qfpack = qfpack;
	}
	public Integer getQfweight() {
		return qfweight;
	}
	public void setQfweight(Integer qfweight) {
		this.qfweight = qfweight;
	}
	public Integer getQfboat() {
		return qfboat;
	}
	public void setQfboat(Integer qfboat) {
		this.qfboat = qfboat;
	}
	public Date getQfdate() {
		return qfdate;
	}
	public void setQfdate(Date qfdate) {
		this.qfdate = qfdate;
	}
	public String getQfpeople() {
		return qfpeople;
	}
	public void setQfpeople(String qfpeople) {
		this.qfpeople = qfpeople;
	}
	public Integer getQscompany() {
		return qscompany;
	}
	public void setQscompany(Integer qscompany) {
		this.qscompany = qscompany;
	}
	public Integer getQsboat() {
		return qsboat;
	}
	public void setQsboat(Integer qsboat) {
		this.qsboat = qsboat;
	}
	public Integer getQsrstyle() {
		return qsrstyle;
	}
	public void setQsrstyle(Integer qsrstyle) {
		this.qsrstyle = qsrstyle;
	}
	public Integer getQspack() {
		return qspack;
	}
	public void setQspack(Integer qspack) {
		this.qspack = qspack;
	}
	public Integer getQsweight() {
		return qsweight;
	}
	public void setQsweight(Integer qsweight) {
		this.qsweight = qsweight;
	}
	public Integer getQsreveal() {
		return qsreveal;
	}
	public void setQsreveal(Integer qsreveal) {
		this.qsreveal = qsreveal;
	}
	public String getQspica() {
		return qspica;
	}
	public void setQspica(String qspica) {
		this.qspica = qspica;
	}
	public String getQspicb() {
		return qspicb;
	}
	public void setQspicb(String qspicb) {
		this.qspicb = qspicb;
	}
	public Date getQsdate() {
		return qsdate;
	}
	public void setQsdate(Date qsdate) {
		this.qsdate = qsdate;
	}
	public String getQspeople() {
		return qspeople;
	}
	public void setQspeople(String qspeople) {
		this.qspeople = qspeople;
	}
	@Override
	public String toString() {
		return "Audit [qid=" + qid + ", qfcompany=" + qfcompany + ", qfrstyle=" + qfrstyle + ", qfpack=" + qfpack
				+ ", qfweight=" + qfweight + ", qfboat=" + qfboat + ", qfdate=" + qfdate + ", qfpeople=" + qfpeople
				+ ", qscompany=" + qscompany + ", qsboat=" + qsboat + ", qsrstyle=" + qsrstyle + ", qspack=" + qspack
				+ ", qsweight=" + qsweight + ", qsreveal=" + qsreveal + ", qspica=" + qspica + ", qspicb=" + qspicb
				+ ", qsdate=" + qsdate + ", qspeople=" + qspeople + "]";
	}
	public Audit(Integer qid, Integer qfcompany, Integer qfrstyle, Integer qfpack, Integer qfweight, Integer qfboat,
			Date qfdate, String qfpeople, Integer qscompany, Integer qsboat, Integer qsrstyle, Integer qspack,
			Integer qsweight, Integer qsreveal, String qspica, String qspicb, Date qsdate, String qspeople) {
		super();
		this.qid = qid;
		this.qfcompany = qfcompany;
		this.qfrstyle = qfrstyle;
		this.qfpack = qfpack;
		this.qfweight = qfweight;
		this.qfboat = qfboat;
		this.qfdate = qfdate;
		this.qfpeople = qfpeople;
		this.qscompany = qscompany;
		this.qsboat = qsboat;
		this.qsrstyle = qsrstyle;
		this.qspack = qspack;
		this.qsweight = qsweight;
		this.qsreveal = qsreveal;
		this.qspica = qspica;
		this.qspicb = qspicb;
		this.qsdate = qsdate;
		this.qspeople = qspeople;
	}
	public Audit() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}