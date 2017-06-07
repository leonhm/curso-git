CREATE PACKAGE BODY PKG_PERIODO_ACADEMICO IS

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_BUSCAR_PERIODO_ACADEMICO(CODIGO VARCHAR2)
/*---------------------------------------------------------------------------*/
/* Nombre    : SP_BUSCAR_PERIODO_ACADEMICO 		                                    */
/* Objetivo  : Busca los datos del PERIODO_ACADEMICO*/
/*---------------------------------------------------------------------------*/                                
/*     Informaci?:                                                          */
/*     Autor: Vladimir Giraldez Maurate?                                          */
/*---------------------------------------------------------------------------*/
IS
    
BEGIN        
    
        SELECT COD_PERIODO_ACADEMICO,FECHA_INICIO_PERIODO_ACADEMICO,
		FECHA_FIN_PERIODO_ACADEMICO
        FROM CBPPAG_PERIODO_ACADEMICO
        WHERE COD_PERIODO_ACADEMICO = CODIGO
    
END SP_BUSCAR_PERIODO_ACADEMICO;

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_MODIFICAR_PERIODO_ACADEMICO(CODIGO VARCHAR2,
F_INICIO DATE, F_FIN DATE)
/*---------------------------------------------------------------------------*/
/* Nombre    : SP_MODIFICAR_PERIODO_ACADEMICO 		                                    */
/* Objetivo  : MODIFICAR los datos del PERIODO_ACADEMICO---------------------------------*/                                
/*     Informaci?:                                                          */
/*     Autor: Vladimir Giraldez Maurate?                                          */
/*---------------------------------------------------------------------------*/


    
BEGIN        
    UPDATE CBPPAG_PERIODO_ACADEMICO 
	SET 	COD_PERIODO_ACADEMICO=CODIGO,
		FECHA_INICIO=F_INICIO,			
    		FECHA_FIN=F_FIN;
END SP_MODIFICAR_PERIODO_ACADEMICO;

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_ELIMINAR_PERIODO_ACADEMICO(CODIGO VARCHAR2)
/*---------------------------------------------------------------------------*/
/* Nombre    : SP_ELIMINAR_PERIODO ACADEMICO 		                                    */
/* Objetivo  : ELIMINAR los datos del PERIODO_ACADEMICO---------------------------------*/                                
/*     Informaci?:                                                          */
/*     Autor: Vladimir Giraldez Maurate?                                          */
/*---------------------------------------------------------------------------*/

IS
    
BEGIN        
    	DELETE CBPPAG_PERIODO_ACADEMICO 
	WHERE COD_PERIODO_ACADEMICO=CODIGO;
END SP_ELIMINAR_PERIODO_ACADEMICO;

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_REGISTRAR_PERIODO_ACADEMICO(CODIGO VARCHAR2, 
F_INICIO DATE, 
F_FIN DATE)


IS
    
BEGIN        
    INSERT INTO CBPPAG_ROL 
		(COD_PERIODO_ACADEMICO, FECHA_INICIO, FECHA_FIN)			
    VALUES (CODIGO, F_INICIO, F_FIN);

END SP_REGISTRAR_PERIODO_ACADEMICO;

END PKG_PERIODO_ACADEMICO;
