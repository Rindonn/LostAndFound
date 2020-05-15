package mypackage;

import java.io.Serializable;



public class sxx implements Serializable {


   	private static final long serialVersionUID = -2547245654057778522L;
   	
   	private  String sid="";
   	
   	private String sname="";
   	
   	private String sxb="";
   	
   	private String sbj="";
   	
   	private String ssfz="";
 

	
	public void setSname(String sname) {
		this.sname = sname; 
	}

	public void setSxb(String sxb) {
		this.sxb = sxb; 
	}

	public void setSbj(String sbj) {
		this.sbj = sbj; 
	}

	public void setSsfz(String ssfz) {
		this.ssfz = ssfz; 
	}

 
	public String getSname() {
		return (this.sname); 
	}

	public String getSxb() {
		return (this.sxb); 
	}

	public String getSbj() {
		return (this.sbj); 
	}

	public String getSid() {
		return (this.sid); 
	}

	public String getSsfz() {
		return (this.ssfz); 
	}
	
	public void setSid(String sid) {
		this.sid = sid; 
	}
   	
   	
    
    
}