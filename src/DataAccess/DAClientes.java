package DataAccess;
import BusinessEntities.BEClientes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class DAClientes {
    Conexion cn = new Conexion();//objeto de conexion
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
    
//    public boolean Registrarclientes(BEClientes cl){
//        String sql = "INSERT INTO clientes (dni,nombre_cliente,telefono,direccion) VALUES (?,?,?,?)";
//        try {
//            con = cn.getConnection();
//            ps = con.prepareStatement(sql);
//            
//            //enviando parametros
//            ps.setString(1,cl.getDni());
//            ps.setString(2,cl.getNombre_cliente());
//            ps.setString(3,cl.getTelefono());
//            ps.setString(4,cl.getDireccion());
//            
//            //ejecutamos nuestro Query
//            ps.execute();
//            return true;
//        } catch (SQLException e) {
//            JOptionPane.showMessageDialog(null,e.toString());
//            return false;
//        }finally{
//            try {
//                con.close();
//            } catch (SQLException e) {
//                System.out.println(e.toString());
//            }
//        }
//    }
    
    
}
