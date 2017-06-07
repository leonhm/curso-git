CREATE PACKAGE BODY PKG_ROL IS

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_BUSCAR_ROL(NOMBRE_ROL VARCHAR2)
/*---------------------------------------------------------------------------*/
/* Nombre    : SP_BUSCAR_ROL		                                    */
/* Objetivo  : Busca los datos del Rol*/
/*---------------------------------------------------------------------------*/                                
/*     Informaci?:                                                          */
/*     Autor: Vladimir Giraldez Maurate?                                          */
/*---------------------------------------------------------------------------*/
IS
    
BEGIN        
	SELECT R.COD_ROL, R.NOM_ROL, R.DESC_ROL ,P.NOM_PERFIL 
	FROM CBPPAG_ROL R
  	JOIN CBPPAG_PERFIL P
  	ON P.COD_ROL=R.COD_ROL AND R.NOM_ROL=NOMBRE_ROL
    
END SP_BUSCAR_ROL;


CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_LISTAR_ROL
/*---------------------------------------------------------------------------*/
/* Nombre    : SP_LISTAR_ROL		                                    */
/* Objetivo  : Busca los datos del Rol*/
/*---------------------------------------------------------------------------*/                                
/*     Informaci?:                                                          */
/*     Autor: Vladimir Giraldez Maurate?                                          */
/*---------------------------------------------------------------------------*/
IS
    
BEGIN        
       SELECT R.COD_ROL, R.NOM_ROL, R.DESC_ROL ,P.NOM_PERFIL 
	FROM CBPPAG_ROL R
  	JOIN CBPPAG_PERFIL P
  	ON P.COD_ROL=R.COD_ROL  
END SP_BUSCAR_ROL;

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_MODIFICAR_ROL(CODIGO VARCHAR2,
NOMBRE VARCHAR2, DESCRIPCION VARCHAR2)
/*---------------------------------------------------------------------------*/
/* Nombre    : SP_MODIFICAR_ROL 		                                    */
/* Objetivo  : MODIFICAR los datos del ROL---------------------------------*/                                
/*     Informaci?:                                                          */
/*     Autor: Vladimir Giraldez Maurate?                                          */
/*---------------------------------------------------------------------------*/
   
IS

BEGIN        
    UPDATE CBPPAG_ROL 
	SET 	COD_ROL=CODIGO,
		DESC_ROL=DESCRIPCION,			
    		NOM_ROL=NOMBRE;
	
END SP_MODIFICAR_ROL;

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_ELIMINAR_ROL(NOMBRE_ROL VARCHAR2)
/*---------------------------------------------------------------------------*/
/* Nombre    : SP_ELIMINAR_ROL 		                                    */
/* Objetivo  : ELIMINAR los datos del ROL---------------------------------*/                                
/*     Informaci?:                                                          */
/*     Autor: Vladimir Giraldez Maurate?                                          */
/*---------------------------------------------------------------------------*/

IS
    
BEGIN        
	DELETE CBPPAG_ROL 
	WHERE NOMBRE_ROL=NOM_ROL;
END SP_ELIMINAR_ROL;

END PKG_ROL;

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_REGISTRAR_ROL(NOMBRE VARCHAR2, CODIGO VARCHAR2, 
DESCRIPCION VARCHAR2)

 /*  (VAR_COD_ROL   	CBPPAG_ROL.COD_ROL%TYPE,
    VAR_NOM_ROL   	CBPPAG_ROL.NOM_ROL%TYPE,
    VAR_DESC_ROL   	CBPPAG_ROL.DESC_ROL%TYPE
    ) AUTHID CURRENT_USER AS*/
IS
    
BEGIN        
    INSERT INTO CBPPAG_ROL 
		(COD_ROL, NOM_ROL, DESC_ROL)			
    VALUES (CODIGO, NOMBRE, DESCRIPCION);

END SP_REGISTRAR_ROL;

CREATE OR REPLACE PROCEDURE DBCBPPAG.SP_CARGAR_PERFIL

IS
    
BEGIN        
    SELECT COD_PERFIL, DESC_PERFIL, NOM_PERFIL
	FROM CBPPAG_PERFIL P
  	JOIN CBPPAG_ROL R
  	ON P.COD_ROL=R.COD_ROL
END SP_CARGAR_PERFIL;