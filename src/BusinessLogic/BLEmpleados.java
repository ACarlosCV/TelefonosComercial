package BusinessLogic;

import DataAccess.DAEmpleados;
import java.sql.SQLException;
import javax.swing.JComboBox;

public class BLEmpleados {
    DAEmpleados emp = new DAEmpleados();
    
    public JComboBox Consultarproveedor(JComboBox BEEmpleados){
        return emp.Consultarproveedor(BEEmpleados);
    }
}
// hola xddd
