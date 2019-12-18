/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

/**
 *
 * @author bactv
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnection {

    public static Connection createConnection() {
        Connection conn = null;
        String serverName = "localhost";
        String dbName = "project_block5";
        String portNumber = "1433";
        String userID = "sa";
        String password = "bacbax";
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        try {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //create connection
            conn = DriverManager.getConnection(url, userID, password);

        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

}
