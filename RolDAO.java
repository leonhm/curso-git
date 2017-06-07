/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.cbppag.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import pe.com.cbppag.bean.RolBean;
import pe.com.cbppag.bean.UsuarioBean;
import java.util.List;
/**
 *
 * @author Michel M
 */
public interface RolDAO {
    int registrarRol(RolBean rolBean);
    int modificarRol(RolBean rolBean);
    int eliminarRol(int codigoUsuario);
    List<RolBean> consultarRol(String codigoUsuario);
    List<RolBean> listarRoles();
}

