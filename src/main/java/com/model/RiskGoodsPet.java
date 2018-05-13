package com.model;

import java.util.Date;

public class RiskGoodsPet {

	private Integer rid;
	private int rsave;
	private Integer rurgent;
	private String rurgents;
	private String rnum;
	private String rcompany;
	private String rpeople;
	private String rshipper;
	private String rconsignee;
	private String rcarrier;
	private String rshipname;
	private String rportloading;
	private Date rloadingtime;
	private String rdischarging;
	private Date rpredeltime;
	private Date rpradeltime;
	private String rdelived;
	private String rgoodsstyle;
	private double rweight;
	private Date rpettime;
	private String rworkwharf;
	private String rport;
	private String rportflag;
	private String rprin;
	private String rprincall;
	private String rodour;
	private double rignitionpoint;
	private String rtoxicity;
	private String type;
	/* 一轮审批 */
	private Integer qfcompany;
	private Integer qfrstyle;
	private Integer qfpack;
	private Integer qfweight;
	private Integer qfboat;
	private Integer qfflag;
	private Date qfdate;
	private String qfpeople;
	/* 二轮审批 */
	private Integer qscompany;
	private Integer qsboat;
	private Integer qsrstyle;
	private Integer qspack;
	private Integer qsweight;
	private Integer qsreveal;
	private String qspica;
	private String qspicb;
	private int qsflag;
	private Date qsdate;
	private String qspeople;

	/* 意见箱 */
	private Comment comment;

	private Notice notice;
	
	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public int getRsave() {
		return rsave;
	}

	public void setRsave(int rsave) {
		this.rsave = rsave;
	}

	public Integer getRurgent() {
		return rurgent;
	}

	public void setRurgent(Integer rurgent) {
		this.rurgent = rurgent;
	}

	public String getRurgents() {
		return rurgents;
	}

	public void setRurgents(String rurgents) {
		this.rurgents = rurgents;
	}

	public String getRnum() {
		return rnum;
	}

	public void setRnum(String rnum) {
		this.rnum = rnum;
	}

	public String getRcompany() {
		return rcompany;
	}

	public void setRcompany(String rcompany) {
		this.rcompany = rcompany;
	}

	public String getRpeople() {
		return rpeople;
	}

	public void setRpeople(String rpeople) {
		this.rpeople = rpeople;
	}

	public String getRshipper() {
		return rshipper;
	}

	public void setRshipper(String rshipper) {
		this.rshipper = rshipper;
	}

	public String getRconsignee() {
		return rconsignee;
	}

	public void setRconsignee(String rconsignee) {
		this.rconsignee = rconsignee;
	}

	public String getRcarrier() {
		return rcarrier;
	}

	public void setRcarrier(String rcarrier) {
		this.rcarrier = rcarrier;
	}

	public String getRshipname() {
		return rshipname;
	}

	public void setRshipname(String rshipname) {
		this.rshipname = rshipname;
	}

	public String getRportloading() {
		return rportloading;
	}

	public void setRportloading(String rportloading) {
		this.rportloading = rportloading;
	}

	public Date getRloadingtime() {
		return rloadingtime;
	}

	public void setRloadingtime(Date rloadingtime) {
		this.rloadingtime = rloadingtime;
	}

	public String getRdischarging() {
		return rdischarging;
	}

	public void setRdischarging(String rdischarging) {
		this.rdischarging = rdischarging;
	}

	public Date getRpredeltime() {
		return rpredeltime;
	}

	public void setRpredeltime(Date rpredeltime) {
		this.rpredeltime = rpredeltime;
	}

	public Date getRpradeltime() {
		return rpradeltime;
	}

	public void setRpradeltime(Date rpradeltime) {
		this.rpradeltime = rpradeltime;
	}

	public String getRdelived() {
		return rdelived;
	}

	public void setRdelived(String rdelived) {
		this.rdelived = rdelived;
	}

	public String getRgoodsstyle() {
		return rgoodsstyle;
	}

	public void setRgoodsstyle(String rgoodsstyle) {
		this.rgoodsstyle = rgoodsstyle;
	}

	public double getRweight() {
		return rweight;
	}

	public void setRweight(double rweight) {
		this.rweight = rweight;
	}

	public Date getRpettime() {
		return rpettime;
	}

	public void setRpettime(Date rpettime) {
		this.rpettime = rpettime;
	}

	public String getRworkwharf() {
		return rworkwharf;
	}

	public void setRworkwharf(String rworkwharf) {
		this.rworkwharf = rworkwharf;
	}

	public String getRport() {
		return rport;
	}

	public void setRport(String rport) {
		this.rport = rport;
	}

	public String getRportflag() {
		return rportflag;
	}

	public void setRportflag(String rportflag) {
		this.rportflag = rportflag;
	}

	public String getRprin() {
		return rprin;
	}

	public void setRprin(String rprin) {
		this.rprin = rprin;
	}

	public String getRprincall() {
		return rprincall;
	}

	public void setRprincall(String rprincall) {
		this.rprincall = rprincall;
	}

	public String getRodour() {
		return rodour;
	}

	public void setRodour(String rodour) {
		this.rodour = rodour;
	}

	public double getRignitionpoint() {
		return rignitionpoint;
	}

	public void setRignitionpoint(double rignitionpoint) {
		this.rignitionpoint = rignitionpoint;
	}

	public String getRtoxicity() {
		return rtoxicity;
	}

	public void setRtoxicity(String rtoxicity) {
		this.rtoxicity = rtoxicity;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public Integer getQfflag() {
		return qfflag;
	}

	public void setQfflag(Integer qfflag) {
		this.qfflag = qfflag;
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

	public int getQsflag() {
		return qsflag;
	}

	public void setQsflag(int qsflag) {
		this.qsflag = qsflag;
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

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "RiskGoodsPet [rid=" + rid + ", rsave=" + rsave + ", rurgent=" + rurgent + ", rurgents=" + rurgents
				+ ", rnum=" + rnum + ", rcompany=" + rcompany + ", rpeople=" + rpeople + ", rshipper=" + rshipper
				+ ", rconsignee=" + rconsignee + ", rcarrier=" + rcarrier + ", rshipname=" + rshipname
				+ ", rportloading=" + rportloading + ", rloadingtime=" + rloadingtime + ", rdischarging=" + rdischarging
				+ ", rpredeltime=" + rpredeltime + ", rpradeltime=" + rpradeltime + ", rdelived=" + rdelived
				+ ", rgoodsstyle=" + rgoodsstyle + ", rweight=" + rweight + ", rpettime=" + rpettime + ", rworkwharf="
				+ rworkwharf + ", rport=" + rport + ", rportflag=" + rportflag + ", rprin=" + rprin + ", rprincall="
				+ rprincall + ", rodour=" + rodour + ", rignitionpoint=" + rignitionpoint + ", rtoxicity=" + rtoxicity
				+ ", type=" + type + ", qfcompany=" + qfcompany + ", qfrstyle=" + qfrstyle + ", qfpack=" + qfpack
				+ ", qfweight=" + qfweight + ", qfboat=" + qfboat + ", qfflag=" + qfflag + ", qfdate=" + qfdate
				+ ", qfpeople=" + qfpeople + ", qscompany=" + qscompany + ", qsboat=" + qsboat + ", qsrstyle="
				+ qsrstyle + ", qspack=" + qspack + ", qsweight=" + qsweight + ", qsreveal=" + qsreveal + ", qspica="
				+ qspica + ", qspicb=" + qspicb + ", qsflag=" + qsflag + ", qsdate=" + qsdate + ", qspeople=" + qspeople
				+ "]";
	}

	public RiskGoodsPet(Integer rid, int rsave, Integer rurgent, String rurgents, String rnum, String rcompany,
			String rpeople, String rshipper, String rconsignee, String rcarrier, String rshipname, String rportloading,
			Date rloadingtime, String rdischarging, Date rpredeltime, Date rpradeltime, String rdelived,
			String rgoodsstyle, double rweight, Date rpettime, String rworkwharf, String rport, String rportflag,
			String rprin, String rprincall, String rodour, double rignitionpoint, String rtoxicity, String type,
			Integer qfcompany, Integer qfrstyle, Integer qfpack, Integer qfweight, Integer qfboat, Integer qfflag,
			Date qfdate, String qfpeople, Integer qscompany, Integer qsboat, Integer qsrstyle, Integer qspack,
			Integer qsweight, Integer qsreveal, String qspica, String qspicb, int qsflag, Date qsdate,
			String qspeople) {
		super();
		this.rid = rid;
		this.rsave = rsave;
		this.rurgent = rurgent;
		this.rurgents = rurgents;
		this.rnum = rnum;
		this.rcompany = rcompany;
		this.rpeople = rpeople;
		this.rshipper = rshipper;
		this.rconsignee = rconsignee;
		this.rcarrier = rcarrier;
		this.rshipname = rshipname;
		this.rportloading = rportloading;
		this.rloadingtime = rloadingtime;
		this.rdischarging = rdischarging;
		this.rpredeltime = rpredeltime;
		this.rpradeltime = rpradeltime;
		this.rdelived = rdelived;
		this.rgoodsstyle = rgoodsstyle;
		this.rweight = rweight;
		this.rpettime = rpettime;
		this.rworkwharf = rworkwharf;
		this.rport = rport;
		this.rportflag = rportflag;
		this.rprin = rprin;
		this.rprincall = rprincall;
		this.rodour = rodour;
		this.rignitionpoint = rignitionpoint;
		this.rtoxicity = rtoxicity;
		this.type = type;
		this.qfcompany = qfcompany;
		this.qfrstyle = qfrstyle;
		this.qfpack = qfpack;
		this.qfweight = qfweight;
		this.qfboat = qfboat;
		this.qfflag = qfflag;
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
		this.qsflag = qsflag;
		this.qsdate = qsdate;
		this.qspeople = qspeople;
	}

	public RiskGoodsPet() {
		super();
		// TODO Auto-generated constructor stub
	}

}
