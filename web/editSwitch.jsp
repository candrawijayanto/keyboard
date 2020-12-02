<%@page import="dao.SwitchDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Switch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% ArrayList<Switch> sw = new SwitchDAO().getAll(); %> 
        <table>
            <tr>
                <td> <label for='idProduk'>ID Produk :</label> </td>
                <td> <input value="<% out.println(sw.get(1).getIdProduk()); %>" id="idProduk"> </td>
            </tr>
            
            <tr>
                <td> <label for='idKategori'>Kategori :</label> </td>
                <td> 
                    <select name='idKategori' id='idKategori'>
                        
                        <option value='SW'>SW - Switch Keyboard</option>
                        <option value='KB' selected="SW">KB - Mechanical Keyboard</option>
                    </select>
                </td>
                <td>
                    
                    
                </td>
            </tr>
            
        </table>
    </body>
</html>
