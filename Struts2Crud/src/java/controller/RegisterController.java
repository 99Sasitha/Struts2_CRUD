/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.RegisterDAO;
import java.util.List;
import model.Register;

/**
 *
 * @author Sasitha Munasinghe
 */
public class RegisterController extends ActionSupport {

    Register register = new Register();
    RegisterDAO dao = new RegisterDAO();

    private List<Register> registerList;
    private String sm = "";
    private String em = "";

    public Register getRegister() {
        return register;
    }

    public void setRegister(Register register) {
        this.register = register;
    }

    public RegisterDAO getDao() {
        return dao;
    }

    public void setDao(RegisterDAO dao) {
        this.dao = dao;
    }

    public List<Register> getRegisterList() {
        return registerList;
    }

    public void setRegisterList(List<Register> registerList) {
        this.registerList = registerList;
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

    //___________________________________________ADD____________________________________________________________________________________________
    public String saveRegister() {
        register.setUsername(register.getUsername());
        register.setPassword(register.getPassword());

        boolean status = dao.saveRegister(register);
        if (status) {

            setSm("Register Successfully..Log in");
            return SUCCESS;
        } else {
            setEm("Error Registration");
            return "input";
        }

    }

    //____________________________________________SELECT ALL Registration__________________________________________________________________
    public String findAllRegistration() {

        registerList = dao.getAllregisters();
        return SUCCESS;
    }

}
