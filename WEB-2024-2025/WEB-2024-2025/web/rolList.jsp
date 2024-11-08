<%-- 
    Document   : menu
    Created on : 15 oct. 2024, 13:06:30
    Author     : Usuario
--%>

<%@page import="org.gerdoc.logica.RolListLogica"%>
<%@page import="org.gerdoc.model.bd.Rol"%>
<%@page import="org.gerdoc.logica.UsuarioListLogica"%>
<%@page import="org.gerdoc.model.bd.Usuarios"%>
<%@page import="org.gerdoc.logica.ArticuloListLogica"%>
<%@page import="org.gerdoc.model.bd.Articulo"%>

<%@page import="java.util.List"%>
<%@page import="org.gerdoc.model.MenuModelo"%>
<%

List<Rol>rols = new RolListLogica( ).getRolList( );
if( rols == null || rols.size() == 0)
{
    out.print("<b>Sin datos</b>");
    return;
}
%>
<table class="table table-hover table-striped table-bordered"> 
    <thead>
        <tr>
        <th scope="col"><b>Usuario</b></th>
        <th scope="col"><b>Rol</b></th>
        </tr>
    </thead>
    <tbody>
<%
    for(Rol rol : rols)
    {
%>
        <tr>
            <th scope="col"><%=rol.getUser()%></th>
            <th scope="col"><%=rol.getRol()%></th>
        </tr>    
<%
    }
%>
    </tbody>
</table>