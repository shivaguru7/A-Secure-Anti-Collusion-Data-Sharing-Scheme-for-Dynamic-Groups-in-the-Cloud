/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DbPack;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author villain
 */
public class DatabaseConnection {
    
    public static Connection getCon(){ 
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con  = DriverManager.getConnection("jdbc:mysql://localhost:3307/Acloud","root","root");
            System.out.println("connected.....");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
    
}
