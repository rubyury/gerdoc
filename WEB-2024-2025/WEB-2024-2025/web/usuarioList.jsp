<%-- 
    Document   : menu
    Created on : 15 oct. 2024, 13:06:30
    Author     : Usuario
--%>

<%@page import="org.gerdoc.logica.UsuarioListLogica"%>
<%@page import="org.gerdoc.model.bd.Usuarios"%>
<%@page import="org.gerdoc.logica.ArticuloListLogica"%>
<%@page import="org.gerdoc.model.bd.Articulo"%>

<%@page import="java.util.List"%>
<%@page import="org.gerdoc.model.MenuModelo"%>
<%

List<Usuarios>usuarios = new UsuarioListLogica( ).getUsuarioList( );
if( usuarios == null || usuarios.size() == 0)
{
    out.print("<b>Sin datos</b>");
    return;
}
%>
<table class="table table-hover table-striped table-bordered"> 
    <thead>
        <tr>
        <th scope="col"><b>Usuario</b></th>
        <th scope="col"><b>Contraseña</b></th>
        </tr>
    </thead>
    <tbody>
<%
    for(Usuarios usuario : usuarios)
    {
%>
        <tr>
            <th scope="col"><%=usuario.getUserName()%></th>
            <th scope="col"><%=usuario.getUserPass()%></th>
        </tr>    
<%
    }
%>
    </tbody>
</table>