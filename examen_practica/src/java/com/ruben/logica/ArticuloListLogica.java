/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ruben.logica;

import java.io.Serializable;
import java.util.List;
import com.ruben.admin.ArticuloService;
import com.ruben.db.Articulo;

/**
 *
 * @author gerdoc
 */
public class ArticuloListLogica  implements Serializable
{

    public ArticuloListLogica() 
    {
    }
    
    public List<Articulo>getArticulosList( )
    {
        return new ArticuloService( ).getArticuloList( );
    }
     
}
