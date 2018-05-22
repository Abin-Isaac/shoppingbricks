/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.AdminLoginBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author shravan
 */
public class AdminLoginDao {
    public String save(AdminLoginBean bean) {
        Connection c = connect.ConnectionProvider.getCon();
        try {
            PreparedStatement ps = c.prepareStatement("select * from admin where admin_name=? and admin_password=?");
           
          
            ps.setString(1, bean.getAdmin_name());
            ps.setString(2, bean.getAdmin_pass());
            
            ResultSet rs= ps.executeQuery();
            
            if(rs.next()) 
		{
                    return "success";
		}
		else
		{
				return "fail";
		}
            
        } catch (Exception ex) {

            ex.printStackTrace();
        }

        return "fail";

    }
    
}
