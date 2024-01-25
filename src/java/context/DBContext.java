/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Administrator
 */
public class DBContext {
    public static final String connectionUrl = "jdbc:sqlserver://localhost;databaseName=Wish;user=sa;password=123456;encrypt=true;trustServerCertificate=true;";
    public static Connection getConnection(){
        Connection conn = null;
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        }catch(Exception e){
            System.out.println("tii" + e.toString());
        }
        try {
            conn = DriverManager.getConnection(connectionUrl);
            return conn;
        }
        catch (Exception e) {
            System.out.println("tii" + e.toString());
        }
        return null;
    }


   
        public static void main(String[] args) {
            try{
                System.out.println(new DBContext().getConnection());
            }
            catch(Exception e){
                
            }
        }
    


}
