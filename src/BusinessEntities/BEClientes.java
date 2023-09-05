package BusinessEntities;
import java.util.Date;

public class BEClientes {

    private int cli_id; //id del cliente
    private String clinombres; //nombres del cliente
    private String cliapellidos; //apellidos del cliente
    private int doc_id; //id del tipo de documento
    private int clinumerodoc; //numero de documento del cliente
    private String clidireccion; //direccion del cliente
    private String cliemail; //email del cliente
    private Date clifechareg; //fecha de registro del cliente
    private int cliestado; //estado del cliente (activo/inactivo)

    public BEClientes() {
    }

    public BEClientes(int cli_id, String clinombres, String cliapellidos, int doc_id, int clinumerodoc, String clidireccion, String cliemail, Date clifechareg, int cliestado) {
        this.cli_id = cli_id;
        this.clinombres = clinombres;
        this.cliapellidos = cliapellidos;
        this.doc_id = doc_id;
        this.clinumerodoc = clinumerodoc;
        this.clidireccion = clidireccion;
        this.cliemail = cliemail;
        this.clifechareg = clifechareg;
        this.cliestado = cliestado;
    }

    public int getCli_id() {
        return cli_id;
    }

    public void setCli_id(int cli_id) {
        this.cli_id = cli_id;
    }

    public String getClinombres() {
        return clinombres;
    }

    public void setClinombres(String clinombres) {
        this.clinombres = clinombres;
    }

    public String getCliapellidos() {
        return cliapellidos;
    }

    public void setCliapellidos(String cliapellidos) {
        this.cliapellidos = cliapellidos;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public int getClinumerodoc() {
        return clinumerodoc;
    }

    public void setClinumerodoc(int clinumerodoc) {
        this.clinumerodoc = clinumerodoc;
    }

    public String getClidireccion() {
        return clidireccion;
    }

    public void setClidireccion(String clidireccion) {
        this.clidireccion = clidireccion;
    }

    public String getCliemail() {
        return cliemail;
    }

    public void setCliemail(String cliemail) {
        this.cliemail = cliemail;
    }

    public Date getClifechareg() {
        return clifechareg;
    }

    public void setClifechareg(Date clifechareg) {
        this.clifechareg = clifechareg;
    }

    public int getCliestado() {
        return cliestado;
    }

    public void setCliestado(int cliestado) {
        this.cliestado = cliestado;
    }
    
    
}
