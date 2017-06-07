
package pe.com.cbppag.DAO;

import java.util.List;
import pe.com.cbppag.bean.PeriodosABean;

/**
 *
 * @author Michel M
 */
public interface PeriodosDAO {
    
    int registrarPeriodo(PeriodosABean periodoBean);
    int modificarPeriodo(PeriodosABean periodoBean);
    int eliminarPeriodo(int codigoPeriodo);
    List<PeriodosABean> consultarPeriodos(String codigoPeriodo);
    List<PeriodosABean> listarPeriodos();
}
