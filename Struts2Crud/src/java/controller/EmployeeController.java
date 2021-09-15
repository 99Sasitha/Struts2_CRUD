/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.EmployeeDAO;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Employee;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Sasitha Munasinghe
 */
public class EmployeeController extends ActionSupport {

    Employee employee = new Employee();
    EmployeeDAO dao = new EmployeeDAO();
    private List<Employee> employeeList;
    private String sm = "";
    private String em = "";

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public EmployeeDAO getDao() {
        return dao;
    }

    public void setDao(EmployeeDAO dao) {
        this.dao = dao;
    }

    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<Employee> employeeList) {
        this.employeeList = employeeList;
    }

    public String getSm() {
        return sm;
    }

    public void setSm(String sm) {
        this.sm = sm;
    }

    public String getEm() {
        return em;
    }

    public void setEm(String em) {
        this.em = em;
    }
    //____________________________________ADD________________________________________________________________________________

    public String saveEmployee() {
        employee.setFirstname(employee.getFirstname());
        employee.setLastname(employee.getLastname());
        employee.setEmail(employee.getEmail());

        boolean status = dao.saveEmployee(employee);
        if (status) {
            setSm("Employee Added Successfully..");
            return SUCCESS;
        } else {
            setEm("Employee Added Unsuccessfully");
            return "input";
        }

    }
    //___________________________________EDIT______________________________________________________________________________________

    public String editEmployee() {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int empid = Integer.parseInt(request.getParameter("empid"));

        Employee e = dao.getEmployee(empid);

        employee.setEmpid(e.getEmpid());
        employee.setFirstname(e.getFirstname());
        employee.setLastname(e.getLastname());
        employee.setEmail(e.getEmail());

        return SUCCESS;
    }

    //________________________________VIEW________________________________________________________________________________________ 
    public String findAllEmployee() throws SQLException {
        employeeList = dao.getAllEmployee();
        return SUCCESS;

    }

}
