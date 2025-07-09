/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author hp
 */
public class DBUtil {
    public static Connection getConnection(){
        Connection conn = null;
        try{
            String url = System.getenv("JDBC_URL");
    String username = System.getenv("JDBC_NAME");
    String password = System.getenv("JDBC_PASS");
    
    Class.forName("org.postgresql.Driver");
    
    conn = DriverManager.getConnection(url,username,password);
    
    System.out.println("Connected successfully");
        }
        catch(Exception e){
            System.out.println("Not connected" + e.getMessage());
            e.printStackTrace();
        }
        return conn;
}
}