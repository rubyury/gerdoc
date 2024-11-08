/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.logica;

import java.io.Serializable;
import java.util.List;
import org.gerdoc.dao.RolService;
import org.gerdoc.model.bd.Rol;


/**
 *
 * @author gerdoc
 */
public class RolListLogica  implements Serializable
{

    public RolListLogica() 
    {
    }
    
    public List<Rol>getRolList( )
    {
        return new RolService( ).getRolList( );
    }
     
}
