/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Sasitha Munasinghe
 */
public class Employee {
    
    private int empid;
    private String firstname;
    private String lastname;
    private String email;
    private String datetime;
    private String loginUser;
    private String loginAdmin;
    private String username;
//    public Employee(String loginUser, String loginAdmin) {
//        this.loginUser = loginUser;
//        this.loginAdmin = loginAdmin;
//    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Employee(String username) {
        this.username = username;
    }

    public String getLoginUser() {
        return loginUser;
    }

    public void setLoginUser(String loginUser) {
        this.loginUser = loginUser;
    }

    public String getLoginAdmin() {
        return loginAdmin;
    }

    public void setLoginAdmin(String loginAdmin) {
        this.loginAdmin = loginAdmin;
    }

  

    public Employee() {
    }

    public Employee(int empid, String firstname, String lastname, String email,String datetime,String loginUser, String loginAdmin) {
        this.empid = empid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.datetime = datetime;
        this.loginUser = loginUser;
        this.loginAdmin = loginAdmin;
    }

    public Employee(int aInt, String string, String string0, String string1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Employee{" + "empid=" + empid + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email +", datetime=" + datetime +"loginUser=" + loginUser + "loginAdmin=" + loginAdmin +"username=" + username +'}';
    }
    
    
    
    
}
