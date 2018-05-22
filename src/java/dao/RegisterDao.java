/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.RegisterBean;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author shravan
 */
public class RegisterDao 
{
    
    public String save(RegisterBean bean)
    {
        Connection c=connect.ConnectionProvider.getCon();
        try {
            PreparedStatement ps=c.prepareStatement("insert into register values(?,?,?,?)");
              ps.setString(1,bean.getEmail());
              ps.setString(2,bean.getUsername());
              ps.setString(3,bean.getPassword());
              ps.setString(4,bean.getNumber());
              int u=ps.executeUpdate();
              if(u>0)
              {
                  return "success";
                 
              }
              else
                  return "fail";
        }
          catch (Exception ex) {
            
             ex.printStackTrace();
        }
       
                  return "fail";
        
    
    }
    
    
}
