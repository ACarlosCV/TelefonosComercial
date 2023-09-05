/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccess;

import BusinessEntities.BEEmpleados;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JComboBox;

/**
 *
 * @author Anthony
 */
public class DAEmpleados {
    Conexion cn = new Conexion();//objeto de conexion
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public int validarLogin(String usuario, String contrasena) {  //validar inicio de sesion

        Connection con;
        PreparedStatement ps;
        ResultSet rs;

        BEEmpleados l = new BEEmpleados();
        Conexion cn = new Conexion();

        int count = 0;

        String sql = "SELECT * FROM empleados WHERE EMPacceso = '" + usuario + "' AND EMPcredencial = '" + contrasena + "'";//consulta
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = 1;
            }else{
                count = 0;
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return count;
    }
    
    public JComboBox Consultarproveedor(JComboBox BEEmpleados){
        String sql="SELECT CARtipo FROM cargos";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                BEEmpleados.addItem(rs.getString("CARtipo"));
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return BEEmpleados;
    }
    
    
}
