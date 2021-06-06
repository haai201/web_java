/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectdb;

/**
 *
 * @author ADMIN
 */


import java.sql.*;

public class connect {
   

    public static Connection getConnect() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/quanlybanhang";
        String user = "root";
        String password = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            
        }catch (ClassNotFoundException | SQLException ex){    
        }
        return conn;
    }
    
}
    
