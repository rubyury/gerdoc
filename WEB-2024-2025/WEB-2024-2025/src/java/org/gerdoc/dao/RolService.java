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
import org.gerdoc.model.bd.Rol;

/**
 *
 * @author Usuario
 */
public class RolService  extends Conexion<Rol>
{

    public RolService() 
    {
    }
    
    
    public List<Rol> getRolList() 
    {
        List<Rol> rolList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Rol rol = null;

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
            resultSet = statement.executeQuery("SELECT * FROM rol");
            if (resultSet == null) 
            {
                return null;
            }
            rolList = new ArrayList<>();
            while (resultSet.next()) 
            {
                rol = new Rol( );
                rol.setUser(resultSet.getString(1));
                rol.setRol(resultSet.getString(2));
                rolList.add(rol);
            }
            resultSet.close();
            closeConnection(connection);
            return rolList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
}
