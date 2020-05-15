package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;


public class sxxop {
 
    	public void add(String sid,String sname,String sxb,String sbj,String ssfz){
		String sql="";
		try {
			DB db=new DB();
 
			sql="insert into sxx(sid,sname,sxb,sbj,ssfz)";
			sql=sql+" values('"+sid+"','"+sname+"','"+sxb+"','"+sbj+"','"+ssfz+"')";
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("增加人员信息错误，错误信息："+e.getMessage());
		}
	}
    
    
    public void delete(String sid){
		DB db=new DB();
		try {
			String sql="delete from sxx where sid='"+sid+"'";
			db.executeUpdate(sql);			
      	 
			db.close();
			     
		}catch (Exception e) {
			System.err.println("删除人员信息失败，错误信息："+e.getMessage());
		}
	}
	
	
		public boolean   checkRz(String sid){
		int  li_count=0;
	   	try {
	   	 
		 DB db=new DB();
	  	 String sql = "select count(*) from cxx where sid='"+sid+"'";
	     ResultSet rs=db.executeQuery(sql);
		 if(rs.next()){
				li_count=rs.getInt(1);
				if(li_count<=0)
				{return true;}
				else
				{return false;}
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
		 db.close();
	     
		}catch (Exception e) {
			System.err.println("错误，错误信息："+e.getMessage());
		}
		return false;
	}
	
		 public ArrayList<sxx> getSxx( ){
        ArrayList<sxx> al=new ArrayList<sxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from sxx order by sid";
			ResultSet rs=db.executeQuery(sql);
	 
			while(rs.next()){
			
		    	sxx sx = new sxx();
		    	sx.setSid(rs.getString("sid"));
				sx.setSname(rs.getString("sname"));
				sx.setSxb(rs.getString("sxb"));
				sx.setSbj(rs.getString("sbj"));
			    sx.setSsfz(rs.getString("ssfz"));
				al.add(sx);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取人员信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
		 public ArrayList<sxx> getSxxName( String sname){
        ArrayList<sxx> al=new ArrayList<sxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from sxx  where sname like '%"+sname+"%'";
			ResultSet rs=db.executeQuery(sql);
	 
			while(rs.next()){
			
		    	sxx sx = new sxx();
		    	sx.setSid(rs.getString("sid"));
				sx.setSname(rs.getString("sname"));
				sx.setSxb(rs.getString("sxb"));
				sx.setSbj(rs.getString("sbj"));
			    sx.setSsfz(rs.getString("ssfz"));
				al.add(sx);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取人员信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
	
	
	 public ArrayList<sxx> getSxxWrz( ){
        ArrayList<sxx> al=new ArrayList<sxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from sxx  where sid not in(select sid from cxx)";
			ResultSet rs=db.executeQuery(sql);
	 
			while(rs.next()){
			
		    	sxx sx = new sxx();
		    	sx.setSid(rs.getString("sid"));
				sx.setSname(rs.getString("sname"));
				sx.setSxb(rs.getString("sxb"));
				sx.setSbj(rs.getString("sbj"));
			    sx.setSsfz(rs.getString("ssfz"));
				al.add(sx);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取人员信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
	public ArrayList<sxx> getSxxWrzByname(String sname){
        ArrayList<sxx> al=new ArrayList<sxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from sxx  where sname like '%"+sname+"%' and sid not in(select sid from cxx)";
			ResultSet rs=db.executeQuery(sql);
	 
			while(rs.next()){
			
		    	sxx sx = new sxx();
		    	sx.setSid(rs.getString("sid"));
				sx.setSname(rs.getString("sname"));
				sx.setSxb(rs.getString("sxb"));
				sx.setSbj(rs.getString("sbj"));
			    sx.setSsfz(rs.getString("ssfz"));
				al.add(sx);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取人员信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
	
		 public String  getsname(String sid){
        String name="";
		String sql="";
		try {
			DB db=new DB();
			sql="select * from sxx  where sid ='"+sid+"'";
			ResultSet rs=db.executeQuery(sql);
	 
			if(rs.next()){
			
		     
				name=rs.getString("sname");
			 
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取人员信息失败，错误信息："+e.getMessage());
		}
		return name;
	}
	
		 public sxx  getDetail(String sid){
			 sxx sx = new sxx();   
			 String name="";
				String sql="";
				try {
					DB db=new DB();
					sql="select * from sxx  where sid ='"+sid+"'";
					ResultSet rs=db.executeQuery(sql);
			 
					if(rs.next()){
					
				     
						sx.setSid(rs.getString("sid"));
						sx.setSname(rs.getString("sname"));
						sx.setSxb(rs.getString("sxb"));
						sx.setSbj(rs.getString("sbj"));
					    sx.setSsfz(rs.getString("ssfz"));
					 
					
					}
					if(rs!=null){
						rs.close();
						rs=null;
					}
					db.close();
				}catch (Exception e) {
					System.err.println("读取人员信息失败，错误信息："+e.getMessage());
				}
				return sx;
			}
			
	
	
	
}