<%@page import="com.ruben.logica.ArticuloListLogica"%>
<%@page import="java.util.List"%>
<%@page import="com.ruben.db.Articulo"%>
<%@page import="com.ruben.model.MenuModelo"%>

<%

List<Articulo>articulos = new ArticuloListLogica( ).getArticulosList( );

%>
<table class="table table-hover table-striped table-bordered"> 
    <thead>
        <tr>
        <th scope="col"><b>Clave</b></th>
        <th scope="col"><b>Cosa</b></th>
        <th scope="col"><b>Descripción</b></th>
        <th scope="col"><b>Precio</b></th>
        </tr>
    </thead>
    <tbody>
<%
    for( Articulo articulo : articulos)
    {
%>
        <tr>
            <th scope="col"><%=articulo.getClave( )%></th>
            <th scope="col"><%=articulo.getArticulo( )%></th>
            <th scope="col"><%=articulo.getDescripcion( )%></th>
            <th scope="col"><%=articulo.getPrecio( )%></th>
        </tr>    
<%
    }
%>
    </tbody>
</table>