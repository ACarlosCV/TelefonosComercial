package BusinessEntities;

import java.util.Date;

public class BEEmpleados {
    private int emp_id;
    private int car_id;
    private String empnombres;
    private String empapellidos;
    private String empsexo;
    private String empfoto;
    private Date empfechanac;
    private int doc_id;
    private int empnumerodoc;
    private String empdireccion;
    private int emptelefono;
    private String empemail;
    private String empacceso;
    private String empcredencial;
    private Date empfechareg;
    private int empestado;

    public BEEmpleados() {
    }

    public BEEmpleados(int emp_id, int car_id, String empnombres, String empapellidos, String empsexo, String empfoto, Date empfechanac, int doc_id, int empnumerodoc, String empdireccion, int emptelefono, String empemail, String empacceso, String empcredencial, Date empfechareg, int empestado) {
        this.emp_id = emp_id;
        this.car_id = car_id;
        this.empnombres = empnombres;
        this.empapellidos = empapellidos;
        this.empsexo = empsexo;
        this.empfoto = empfoto;
        this.empfechanac = empfechanac;
        this.doc_id = doc_id;
        this.empnumerodoc = empnumerodoc;
        this.empdireccion = empdireccion;
        this.emptelefono = emptelefono;
        this.empemail = empemail;
        this.empacceso = empacceso;
        this.empcredencial = empcredencial;
        this.empfechareg = empfechareg;
        this.empestado = empestado;
    }

    

    public int getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public String getEmpnombres() {
        return empnombres;
    }

    public void setEmpnombres(String empnombres) {
        this.empnombres = empnombres;
    }

    public String getEmpapellidos() {
        return empapellidos;
    }

    public void setEmpapellidos(String empapellidos) {
        this.empapellidos = empapellidos;
    }

    public String getEmpsexo() {
        return empsexo;
    }

    public void setEmpsexo(String empsexo) {
        this.empsexo = empsexo;
    }

    public String getEmpfoto() {
        return empfoto;
    }

    public void setEmpfoto(String empfoto) {
        this.empfoto = empfoto;
    }

    public Date getEmpfechanac() {
        return empfechanac;
    }

    public void setEmpfechanac(Date empfechanac) {
        this.empfechanac = empfechanac;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public int getEmpnumerodoc() {
        return empnumerodoc;
    }

    public void setEmpnumerodoc(int empnumerodoc) {
        this.empnumerodoc = empnumerodoc;
    }

    public String getEmpdireccion() {
        return empdireccion;
    }

    public void setEmpdireccion(String empdireccion) {
        this.empdireccion = empdireccion;
    }

    public int getEmptelefono() {
        return emptelefono;
    }

    public void setEmptelefono(int emptelefono) {
        this.emptelefono = emptelefono;
    }

    public String getEmpemail() {
        return empemail;
    }

    public void setEmpemail(String empemail) {
        this.empemail = empemail;
    }

    public String getEmpacceso() {
        return empacceso;
    }

    public void setEmpacceso(String empacceso) {
        this.empacceso = empacceso;
    }

    public String getEmpcredencial() {
        return empcredencial;
    }

    public void setEmpcredencial(String empcredencial) {
        this.empcredencial = empcredencial;
    }
    
    public Date getEmpfechareg() {
        return empfechareg;
    }

    public void setEmpfechareg(Date empfechareg) {
        this.empfechareg = empfechareg;
    }

    public int getEmpestado() {
        return empestado;
    }

    public void setEmpestado(int empestado) {
        this.empestado = empestado;
    }
    
    
}
