package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class USERDB {
    private Connection conn;//데이터 베이스에 접근
    private PreparedStatement psmt;//
    private ResultSet rs;//정보를 담을수 있는 객체

    public USERDB(){
        try {
            String dbURL="jdbc:mysql://localhost:3306/MyWeb";
            String dbID="kkjjss103@";
            String dbPassward="kkjjss103@";
            Class.forName("com.mysql.jdbc.Drvier");
            conn= DriverManager.getConnection(dbURL,dbID,dbPassward);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public int login(String userID,String userPassward) {
        String SQL = "SELECT userPassword FORM USER WHERE userID =?";
        try {
            psmt= conn.prepareStatement(SQL);
            psmt.setString(1,userID);
            rs=psmt.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(userPassward))
                    return 1;
                else
                    return 0;
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return -2;
    }
}
