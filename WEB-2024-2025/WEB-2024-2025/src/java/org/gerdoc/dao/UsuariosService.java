/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.gerdoc.model.bd.Usuarios;

/**
 *
 * @author Usuario
 */
public class UsuariosService  extends Conexion<Usuarios>
{

    public UsuariosService() 
    {
    }
    
    
    public List<Usuarios> getUsuariosList() 
    {
        List<Usuarios> usuarioList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Usuarios usuario = null;

        try 
        {
            connection = getConnection();
            if (connection == null) 
            {
                return null;
            }
            statement = connection.createStatement();
            if (statement == null) {
                return null;
            }
            resultSet = statement.executeQuery("SELECT * FROM usuarios");
            if (resultSet == null) 
            {
                return null;
            }
            usuarioList = new ArrayList<>();
            while (resultSet.next()) 
            {
                usuario = new Usuarios( );
                usuario.setUserName(resultSet.getString(1));
                usuario.setUserPass(resultSet.getString(2));
                usuarioList.add(usuario);
            }
            resultSet.close();
            closeConnection(connection);
            return usuarioList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
}
