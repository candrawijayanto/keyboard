<%@page import="dao.SwitchDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Produk"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Switch"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
           ArrayList<Switch> detailSwitch = new SwitchDAO().getDetail("GAT-RED");
           for(Switch s : detailSwitch){
               out.println(s.getNamaProduk());
                   
               out.println("ok");
           }
        %>
            
        
    </body>
</html>
