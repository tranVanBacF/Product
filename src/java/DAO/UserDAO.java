/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DB.DBConnection;
import Model.Store;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author bactv
 */
public class UserDAO {

    public static boolean insertUser(User user) {
        // create connection 
        Connection conn = DBConnection.createConnection();
        try {
            PreparedStatement ptml = null;
            String sql = "insert into  users(username,LastName,FirstName,password) values(?,?,?,?)";
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, user.getUsername());
            ptml.setString(2, user.getLastName());
            ptml.setString(3, user.getFirstName());
            ptml.setString(4, user.getPassWord());

            int kt = ptml.executeUpdate();
            if (kt != 0) {
                return true;
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static User getUser(String username) {
        // create connection
        Connection conn = DBConnection.createConnection();
        String sql = "select * from users where username =?";
        PreparedStatement ptml;
        try {
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, username);
            // user ResultSet Object to save all rows after select
            ResultSet rs = ptml.executeQuery();
            while (rs.next()) {// check if rs has element
                return new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
            rs.close();
            // close connection
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static boolean checkUser(String username) {
        // create connection
        Connection conn = DBConnection.createConnection();
        String sql = "select * from users where username =?";
        PreparedStatement ptml;
        try {
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, username);
            // user ResultSet Object to save all rows after select
            ResultSet rs = ptml.executeQuery();
            while (rs.next()) {// check if rs has element
                return true;
            }
            rs.close();
            // close connection
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static boolean checkUserPawword(String username, String password) {
        // create connection
        Connection conn = DBConnection.createConnection();
        String sql = "select * from users where username =? and password = ? ";
        PreparedStatement ptml;
        try {
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, username);
            ptml.setString(2, password);
            // user ResultSet Object to save all rows after select
            ResultSet rs = ptml.executeQuery();
            while (rs.next()) {// check if rs has element
                return true;
            }
            rs.close();
            // close connection
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
