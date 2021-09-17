/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Sasitha Munasinghe
 */
public class DBConnect {

    private static Connection con;
    private static Connection con1;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {

            out.println(e);
        }

    }

    public static Connection getConnection() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3308/epicstruts2", "root", "");
        return con;
    }
    
    public static Connection getConnection1() throws SQLException{
    
    con1=DriverManager.getConnection("jdbc:mysql://localhost:3308/epicstruts2", "root", "");
    return con1;
    }

}
