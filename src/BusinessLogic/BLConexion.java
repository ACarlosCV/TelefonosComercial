package BusinessLogic;

import BusinessEntities.BEEmpleados;
import DataAccess.Conexion;
import DataAccess.DAEmpleados;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BLConexion {
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    DAEmpleados empleado = new DAEmpleados();
    
    public int validar(String user,String pass){
        return empleado.validarLogin(user, pass);
    }
}
