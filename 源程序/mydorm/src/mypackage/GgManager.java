package mypackage;

import java.sql.ResultSet;



/**
 * ���洦����
 *
 */
public class GgManager {
	/**
	 * ȡ�ù�����Ϣ
	 * @param ��
	 * @return Gg ������Ϣ
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
			System.err.println("��ȡ������Ϣʧ�ܣ�������Ϣ��"+e.getMessage());
		}
		return gg;
	}
	/**
	 * ���湫����Ϣ
	 * @param ggnr����������,fbsj������ʱ��
	 * @return ��
	 */
	public void setGg(String ggnr,String fbsj){
		String sql="insert into gg(ggnr,fbsj) values('"+ggnr+"','"+fbsj+"')";
		String sql1="delete from gg";
		DB db =new DB();
		try{
			db.executeUpdate(sql1);
			db.executeUpdate(sql);
		}catch(Exception e){
			System.err.println("д�빫����Ϣʧ�ܣ�������Ϣ"+e.getMessage());
		}
	}
}
