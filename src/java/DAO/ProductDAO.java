/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DB.DBConnection;
import Model.Product;
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
public class ProductDAO {

     public static Product getProductId(int id) {
        // create connection
        Connection conn = DBConnection.createConnection();

        String sql = "select pr.id, pr.productName, pr.quanlity, cp.name, st.name, cp.id from products pr, store st, company cp\n"
                + "where pr.companyId  = cp.id and st.name = pr.storeName and pr.id  = ?";
        List<Product> products = new ArrayList<Product>();

        PreparedStatement ptml;
        try {
            ptml = conn.prepareStatement(sql);
            ptml.setInt(1, id);
            // user ResultSet Object to save all rows after select
            ResultSet rs = ptml.executeQuery();

            while (rs.next()) {// check if rs has element
                return (new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6)));
            }

            rs.close();
            // close connection
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static List<Product> getAllProduct() {
        // create connection
        Connection conn = DBConnection.createConnection();

        String sql = "select pr.id, pr.productName, pr.quanlity, cp.name, st.name, cp.id from products pr, store st, company cp\n"
                + "where pr.companyId  = cp.id and st.name = pr.storeName";
        List<Product> products = new ArrayList<Product>();

        PreparedStatement ptml;
        try {
            ptml = conn.prepareStatement(sql);

            // user ResultSet Object to save all rows after select
            ResultSet rs = ptml.executeQuery();

            while (rs.next()) {// check if rs has element
                products.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6)));
            }

            rs.close();
            // close connection
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public static boolean insertProduct(Product product) {
        // create connection 
        Connection conn = DBConnection.createConnection();
        try {
            PreparedStatement ptml = null;
            String sql = "insert into  products(productName,quanlity,companyId,storeName) values(?,?,?,?)";
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, product.getProductName());
            ptml.setInt(2, product.getQuanlity());
            ptml.setInt(3, product.getCompanyId());
            ptml.setString(4, product.getStoreName());
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

    public static boolean updateProduct(Product product) {
        // create connection 
        Connection conn = DBConnection.createConnection();
        try {
            PreparedStatement ptml = null;
            String sql = "update   products set productName=?,quanlity=?,companyId=?,storeName=? where id = ?";
            ptml = conn.prepareStatement(sql);
            ptml.setString(1, product.getProductName());
            ptml.setInt(2, product.getQuanlity());
            ptml.setInt(3, product.getCompanyId());
            ptml.setString(4, product.getStoreName());
            ptml.setInt(5, product.getId());

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
    
     public static boolean deleteProduct(Product product) {
        // create connection 
        Connection conn = DBConnection.createConnection();
        try {
            PreparedStatement ptml = null;
            String sql = "delete products where id = ?";
            ptml = conn.prepareStatement(sql);
            ptml.setInt(1, product.getId());
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
