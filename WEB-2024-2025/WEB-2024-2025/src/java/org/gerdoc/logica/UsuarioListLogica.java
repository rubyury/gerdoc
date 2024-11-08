/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.logica;

import java.io.Serializable;
import java.util.List;
import org.gerdoc.dao.UsuariosService;
import org.gerdoc.model.bd.Usuarios;

/**
 *
 * @author gerdoc
 */
public class UsuarioListLogica  implements Serializable
{

    public UsuarioListLogica() 
    {
    }
    
    public List<Usuarios>getUsuarioList( )
    {
        return new UsuariosService( ).getUsuariosList( );
    }
     
}
