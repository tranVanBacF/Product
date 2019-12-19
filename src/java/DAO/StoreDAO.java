/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DB.DBConnection;
import Model.Store;
import Model.Product;
import Model.Store;
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
public class StoreDAO {

    public static List<Store> getAllStore() {
        // create connection
        Connection conn = DBConnection.createConnection();
        String sql = "select * from store";
        List<Store> stores = new ArrayList<Store>();
        PreparedStatement ptml;
        try {
            ptml = conn.prepareStatement(sql);
            // user ResultSet Object to save all rows after select
            ResultSet rs = ptml.executeQuery();
            while (rs.next()) {// check if rs has element
                stores.add(new Store(rs.getString(1), rs.getString(2)));
            }
            rs.close();
            // close connection
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stores;
    }

    public static boolean insertStore(Store store) {
        // create connection 
        Connection conn = DBConnection.createConnection();
        try {
            PreparedStatement ptml = null;
            String sql = "insert into  store(name,address) values(?,?)";
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, store.getName());
            ptml.setString(2, store.getAddress());
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
}
