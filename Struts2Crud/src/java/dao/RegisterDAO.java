/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static java.lang.System.out;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Register;
import util.DBConnect;

/**
 *
 * @author Sasitha Munasinghe
 */
public class RegisterDAO {
// __________________________________View Data____________________________________________________   
    public List<Register> getAllregisters() throws SQLException{
    
        List<Register> list=new ArrayList<>();
        
        String sql="SELECT * FROM register";
        try {
            ResultSet rs=DBConnect.getConnection1().createStatement().executeQuery(sql);
            while(rs.next()){
            list.add(new Register(rs.getInt("id"),rs.getString("username"),rs.getString("password"),rs.getString("userRole")));
            
            
            }
            return list;
        } catch (Exception e) {
            out.println(e);
        }
        finally{
        if(DBConnect.getConnection1()!=null){
        DBConnect.getConnection1().close();
        }
        }
        
        return null;
    
    }
 //_______________________________________________INSERT DATA____________________________________________________________________________________
     public boolean saveRegister(Register r) throws SQLException{
         try {
             String sql="INSERT INTO register(id,username,password,userRole)VALUES(null,?,md5(?),'user')";
             PreparedStatement pst=DBConnect.getConnection1().prepareStatement(sql);
             pst.setString(1,r.getUsername());
             pst.setString(2, r.getPassword());
             
             int value=pst.executeUpdate();
             if(value>0){
             return true;
             }
         } catch (Exception e) {
             out.println(e);
         }
         finally{
        if(DBConnect.getConnection1()!=null){
        DBConnect.getConnection1().close();
        }
        }
         return false;
     }
    //----------------------------------------------GET REGISTERS______________________________________________________________________________________
     
    
    
}
