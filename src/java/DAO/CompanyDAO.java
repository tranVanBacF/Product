/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DB.DBConnection;
import Model.Company;
import Model.Company;
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
public class CompanyDAO {

    public static List<Company> getAllCompany() {
        // create connection
        Connection conn = DBConnection.createConnection();
        String sql = "select * from company";
        List<Company> companies = new ArrayList<Company>();
        PreparedStatement ptml;
        try {
            ptml = conn.prepareStatement(sql);
            // user ResultSet Object to save all rows after select
            ResultSet rs = ptml.executeQuery();
            while (rs.next()) {// check if rs has element
                companies.add(new Company(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
            rs.close();
            // close connection
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(CompanyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return companies;
    }

    public static boolean insertCompany(Company company) {
        // create connection 
        Connection conn = DBConnection.createConnection();
        try {
            PreparedStatement ptml = null;
            String sql = "insert into  company(name,address) values(?,?)";
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, company.getName());
            ptml.setString(2, company.getAddress());
            int kt = ptml.executeUpdate();
            if (kt != 0) {
                return true;
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(CompanyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
    

