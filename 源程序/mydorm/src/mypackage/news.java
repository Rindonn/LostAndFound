 package mypackage;

import java.io.Serializable;

public class news implements Serializable {

   private static final long serialVersionUID = -2547245654057778522L;
   
   private String bh="";
   
   private String bt="";
   
   private String nr="";
   
   private String fbsj="";
   
   private String lx="";
   
   private String zt = "";
   
   private  String sid="";
  	
  	private String sname="";

	
	public void setBh(String bh) {
		this.bh = bh; 
	}

	public void setBt(String bt) {
		this.bt = bt; 
	}

	public void setNr(String nr) {
		this.nr = nr; 
	}

	public void setFbsj(String fbsj) {
		this.fbsj = fbsj; 
	}

	public void setLx(String lx) {
		this.lx = lx; 
	}

	public String getBh() {
		return (this.bh); 
	}

	public String getBt() {
		return (this.bt); 
	}

	public String getNr() {
		return (this.nr); 
	}

	public String getFbsj() {
		return (this.fbsj); 
	}

	public String getLx() {
		return (this.lx); 
	}

	public String getZt() {
		return zt;
	}

	public void setZt(String zt) {
		this.zt = zt;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
    
}