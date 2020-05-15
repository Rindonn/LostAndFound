package mypackage;

import java.sql.ResultSet;


public class LoginManager {
	public boolean testUser(String username,String password,String type){
		boolean result=false;
		String sql="";
		DB db=new DB();
		if("2".equals(type)){
			sql="select count(*) from guanli where username='"+username+"' and password='"+password+"'";
		}else if("1".equals(type)){
			sql="select count(*) from lingdao where username='"+username+"' and password='"+password+"'";
		}else if("3".equals(type)){
			sql="select count(*) from sxx where sid='"+username+"' and sbj='"+password+"'";
		}else{
			result=false;
		}
		try{
			
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
				if(rs.getInt(1)>0){
					result=true;
				}else{
				    result=false;
				}
			}else{
				result=false;
			}
		}catch(Exception e){
			
		}
		return result;
	}

}
