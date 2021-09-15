/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static java.lang.System.out;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DBConnect;

/**
 *
 * @author Sasitha Munasinghe
 */
public class EmployeeDAO {

    //_______________________________________________SELECT____________________________________________________________________________________
    public List<Employee> getAllEmployee() throws SQLException {
        List<Employee> list = new ArrayList<>();
        String sql = "SELECT * FROM employees";

        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                list.add(new Employee(rs.getInt("empid"), rs.getString("firstname"), rs.getString("lastname"), rs.getString("email")));
            }
            return list;
        } catch (Exception e) {
            out.println(e);
        }
        return null;

    }

    //____________________________________________________saveEmployee()________________________________________________________________________
    public boolean saveEmployee(Employee e) {
        try {
            String sql = "INSERT INTO employees(empid,firstname,lastname,email)VALUES(null,?,?,?)";

            PreparedStatement pst = DBConnect.getConnection().prepareStatement(sql);
            pst.setString(1, e.getFirstname());
            pst.setString(2, e.getLastname());
            pst.setString(3, e.getEmail());

            int value = pst.executeUpdate();
            if (value > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    //________________________________________UPDATE________________________________________________________
    public boolean updateEmployee(Employee e) {
        try {
            String sql = "UPDATE employees SET firstname=?, lastname=?, email=? WHERE empid=?";

            PreparedStatement pst = DBConnect.getConnection().prepareStatement(sql);
            pst.setString(1, e.getFirstname());
            pst.setString(2, e.getLastname());
            pst.setString(3, e.getEmail());
            pst.setInt(4, e.getEmpid());

            int value = pst.executeUpdate();
            if (value > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    //_____________________________________DELETE____________________________________________________________________________________
    public boolean deleteEmployee(Employee e) {
        try {
            String sql = "DELETE FROM employees WHERE empid=?";

            PreparedStatement pst = DBConnect.getConnection().prepareStatement(sql);

            pst.setInt(1, e.getEmpid());

            int value = pst.executeUpdate();
            if (value > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    //_____________________________GET Details for Edit________________________________________________________
    public Employee getEmployee(int empid) {

        Employee e = new Employee();

        String sql = "SELECT * FROM employees WHERE empid=" + empid;

        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery(sql);
            if (rs.next()) {
                e.setEmpid(rs.getInt("empid"));
                e.setFirstname(rs.getString("firstname"));
                e.setLastname(rs.getString("lastname"));
                e.setEmail(rs.getString("email"));
            }

            return e;

        } catch (SQLException error) {

            out.println(error);

        }

        return null;
    }

}
