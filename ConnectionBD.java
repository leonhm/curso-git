
package pe.com.cbppag.connection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import pe.com.cbppag.bean.RolBean;
import pe.com.cbppag.util.Util;

/**
 *
 * @author Michel M
 */
public class ConnectionBD {
    private static ConnectionBD instance = null;
    private Connection cn;

    public ConnectionBD() {
        //Constructor de la clase ConnectionBD
    }

    public Connection openConnection() throws SQLException, ClassNotFoundException{
        Class.forName("Oracle.jdbc.driver.DriverOracle");
        try {
            
            String url = "jdbc:oracle:thin:@localhost:1521:MIORACLE";
            String usuario = "DBCBPPAG";
            String clave = "1234";
            cn = DriverManager.getConnection(url, usuario, clave);
            System.out.println("ssdddd");
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionBD.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
            return null;
        }
        return cn;
    }

    public boolean closeConnection() {
        try {
            if (cn != null) {
                cn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionBD.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
            return false;
        }
        return true;
    }
       public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Connection cn = new ConnectionBD().openConnection();
        if(cn!=null){
            System.out.println("Conexion exitosa");
        }
    }
    
}
