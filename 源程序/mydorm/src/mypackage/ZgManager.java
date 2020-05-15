package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;
 

public class ZgManager {
 

	public void setPassword(String username,String usertype,String newpass){
		String sql="";
		DB db=new DB();
		if("1".equals(usertype)){
	    	sql="update lingdao set password='"+newpass+"' where username='"+username+"'";
		}else if("2".equals(usertype)){
				sql="update guanli set password='"+newpass+"' where username='"+username+"'";
	  
	    }else if("3".equals(usertype)){
				sql="update sxx set sbj='"+newpass+"' where sid='"+username+"'";
	 
		}
		try{
			db.executeUpdate(sql);
		}catch(Exception e){
			System.err.println("ĞŞ¸ÄÃÜÂë´íÎó£¬´íÎóĞÅÏ¢£º"+e.getMessage());
		}
	}
}
