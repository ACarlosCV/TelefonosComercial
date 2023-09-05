package DataAccess;

import BusinessEntities.BEEmpleados;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexion {

    Connection con; //variable de tipo connection

    public Connection getConnection() {
        try {
            String ruta = "jdbc:mysql://localhost:3306/comercialcelulares?serverTimezone=UTC";
            con = DriverManager.getConnection(ruta, "root", "1234");
            return con;
        } catch (SQLException e) {
            System.out.println(e.toString());
            JOptionPane.showMessageDialog(null, "Error de conexion " + e);
        }
        return null;
    }
}
