
package pe.com.cbppag.bean;

/**
 *
 * @author Michel M
 */
public class PeriodosABean {
    private String COD_PERIODO_ACADEMICO;
    private int fecha_inicio;
    private int fecha_fin;

    public PeriodosABean() {
    }

    public PeriodosABean(String cod_per_acad, int fecha_inicio, int fecha_fin) {
        this.COD_PERIODO_ACADEMICO = cod_per_acad;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
    }

    public String getCod_per_acad() {
        return COD_PERIODO_ACADEMICO;
    }

    public void setCod_per_acad(String cod_per_acad) {
        this.COD_PERIODO_ACADEMICO = cod_per_acad;
    }

    public int getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(int fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public int getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(int fecha_fin) {
        this.fecha_fin = fecha_fin;
    }
    
    
    
}
