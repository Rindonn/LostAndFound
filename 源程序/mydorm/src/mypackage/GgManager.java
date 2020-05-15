package mypackage;

import java.sql.ResultSet;



/**
 * 公告处理类
 *
 */
public class GgManager {
	/**
	 * 取得公告信息
	 * @param 空
	 * @return Gg 公告信息
	 */
	public Gg getGgInfo(){
		String sql="select ggnr,fbsj from gg";
		Gg gg=new Gg();
		try{
			DB db =new DB();
			ResultSet rs=(ResultSet)db.executeQuery(sql);
			if(rs.next()){
				gg.setGgnr(rs.getString(1));
				gg.setFbsj(String.valueOf(rs.getDate(2)));
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}	
		}catch(Exception e){
			System.err.println("读取公告信息失败，错误信息："+e.getMessage());
		}
		return gg;
	}
	/**
	 * 保存公告信息
	 * @param ggnr　公告内容,fbsj　发布时间
	 * @return 空
	 */
	public void setGg(String ggnr,String fbsj){
		String sql="insert into gg(ggnr,fbsj) values('"+ggnr+"','"+fbsj+"')";
		String sql1="delete from gg";
		DB db =new DB();
		try{
			db.executeUpdate(sql1);
			db.executeUpdate(sql);
		}catch(Exception e){
			System.err.println("写入公告信息失败，错误信息"+e.getMessage());
		}
	}
}
