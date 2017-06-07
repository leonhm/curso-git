
package pe.com.cbppag.bean;

/**
 *
 * @author Michel M
 */
public class RolBean {
    private String codigoRol;
    private String nombreRol;
    private String descripcionRol;

    public RolBean() {
    }

    public RolBean(String codigoRol, String nombreRol, String descripcionRol) {
        this.codigoRol = codigoRol;
        this.nombreRol = nombreRol;
        this.descripcionRol = descripcionRol;
    }
       
    public String getCodigoRol() {
        return codigoRol;
    }

    public void setCodigoRol(String codigoRol) {
        this.codigoRol = codigoRol;
    }

    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }

    public String getDescripcionRol() {
        return descripcionRol;
    }

    public void setDescripcionRol(String descripcionRol) {
        this.descripcionRol = descripcionRol;
    }
    
}
