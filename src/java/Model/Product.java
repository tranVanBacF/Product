/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author bactv
 */
public class Product {
    private int id;
    private String productName;
    private int quanlity;
    private String productAddress;

    public Product() {
    }
   public Product(String productName, int quanlity, String productAddress) {
        this.productName = productName;
        this.quanlity = quanlity;
        this.productAddress = productAddress;
    }
    public Product(int id, String productName, int quanlity, String productAddress) {
        this.id = id;
        this.productName = productName;
        this.quanlity = quanlity;
        this.productAddress = productAddress;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(int quanlity) {
        this.quanlity = quanlity;
    }

    public String getProductAddress() {
        return productAddress;
    }

    public void setProductAddress(String productAddress) {
        this.productAddress = productAddress;
    }
    
}
