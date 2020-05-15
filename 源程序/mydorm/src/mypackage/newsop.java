package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;

 

public class newsop {

   public void add(String bh,String bt,String nr,String fbsj,String lx,String sid){
		String sql="";
		try {
			DB db=new DB();
 
			sql="insert into news(bh,bt,nr,fbsj,lx,sid,zt)";
			sql=sql+" values('"+bh+"','"+bt+"','"+nr+"','"+fbsj+"','"+lx+"','"+sid+"','10')";
			db.executeUpdate(sql);
			db.close();
			System.out.print(sql);
		}catch (Exception e) {
			System.err.println("增加新闻信息错误，错误信息："+e.getMessage());
		}
	}
    
    
    public void delete(String bh){
		DB db=new DB();
		try {
			String sql="delete from news where  bh='"+bh+"'";
			db.executeUpdate(sql);			
      	 
			db.close();
			     
		}catch (Exception e) {
			System.err.println("删除新闻信息失败，错误信息："+e.getMessage());
		}
	}
    
    public void sh(String bh){
		DB db=new DB();
		try {
			String sql="update news set zt = '20' where  bh='"+bh+"'";
			db.executeUpdate(sql);			
      	 
			db.close();
			     
		}catch (Exception e) {
			System.err.println("审核新闻信息失败，错误信息："+e.getMessage());
		}
	}
    
     public ArrayList<news> getnewsall(String sid){
        ArrayList<news> al=new ArrayList<news>();
		String sql="";
		try {
			DB db=new DB();
			if("".equals(sid)){
				sql="select * from news order by fbsj desc";
			}else{
				sql="select * from news where sid = '"+sid+"' order by fbsj desc";
			}
			
			ResultSet rs=db.executeQuery(sql);
	 
			while(rs.next()){
			
		    	news pt = new news();
		    	pt.setBh(rs.getString("bh"));
				pt.setBt(rs.getString("bt"));
		        pt.setNr(rs.getString("nr"));
		        pt.setFbsj(rs.getString("fbsj"));
		        pt.setLx(rs.getString("lx"));
		        pt.setZt(rs.getString("zt"));
		        pt.setSid(rs.getString("sid"));
		        al.add(pt);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取新闻信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
	 public  news  getnewsbybh(String bh ){
        news pt = new news();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from news where bh='"+bh+"'";
			ResultSet rs=db.executeQuery(sql);
	 
			if(rs.next()){
			
		    
		    	pt.setBh(rs.getString("bh"));
				pt.setBt(rs.getString("bt"));
		        pt.setNr(rs.getString("nr"));
		        pt.setFbsj(rs.getString("fbsj"));
		        pt.setLx(rs.getString("lx"));
		        pt.setZt(rs.getString("zt"));
		        pt.setSid(rs.getString("sid"));
		         
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取新闻信息失败，错误信息："+e.getMessage());
		}
		return pt;
	}
	
	
	public ArrayList<news> getnewbylx(String lx){
        ArrayList<news> al=new ArrayList<news>();
		String sql="";
		try {
			DB db=new DB();
			sql="select  * from news where lx='"+lx+"' and zt = '20' order by fbsj desc";
			ResultSet rs=db.executeQuery(sql);
	 
			while(rs.next()){
			
		    	news pt = new news();
		    	pt.setBh(rs.getString("bh"));
				pt.setBt(rs.getString("bt"));
		        pt.setNr(rs.getString("nr"));
		        pt.setFbsj(rs.getString("fbsj"));
		        pt.setLx(rs.getString("lx"));
		        
		        al.add(pt);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取新闻信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	public ArrayList<news> getnewbylx2(String lx,String key){
		key = Tools.encode(key);
        ArrayList<news> al=new ArrayList<news>();
		String sql="";
		try {
			DB db=new DB();
			sql="select  * from news where lx='"+lx+"' and bt like '%"+key+"%'  and zt = '20' order by fbsj desc";
			ResultSet rs=db.executeQuery(sql);
	 
			while(rs.next()){
			
		    	news pt = new news();
		    	pt.setBh(rs.getString("bh"));
				pt.setBt(rs.getString("bt"));
		        pt.setNr(rs.getString("nr"));
		        pt.setFbsj(rs.getString("fbsj"));
		        pt.setLx(rs.getString("lx"));
		        
		        al.add(pt);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("读取新闻信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
}