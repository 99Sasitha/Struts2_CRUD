/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.EmployeeDAO;
import java.sql.SQLException;

/**
 *
 * @author Sasitha Munasinghe
 */
public class Test {
    public static void main(String[]args) throws SQLException{
    
        EmployeeDAO dao=new EmployeeDAO();
        System.out.println(dao.getAllEmployee());
    
    }
    
}
