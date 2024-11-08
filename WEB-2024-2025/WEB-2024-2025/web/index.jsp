<%-- 
    Document   : index
    Created on : 15 oct. 2024, 13:06:00
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        boolean flag = ((int)(Math.random() * 10)) < 5;
        out.print(flag);
        if( flag || true)
        {  
        %>
        <jsp:include page="menu.jsp"  >
            <jsp:param name="param1" value="index" />
        </jsp:include>
        <%
        }
         %>
        <h1>index</h1>
        <jsp:include page="tabla.jsp"  />
        <jsp:include page="usuarioList.jsp"  />
        <jsp:include page="rolList.jsp"  />
            
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
