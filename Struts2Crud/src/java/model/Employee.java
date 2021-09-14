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

    public Employee() {
    }

    public Employee(int empid, String firstname, String lastname, String email) {
        this.empid = empid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
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

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Employee{" + "empid=" + empid + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email + '}';
    }
    
    
    
}
