<%@page import="dao.SwitchDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Switch"%>

<!DOCTYPE html>
<html>
    <head>
        <title>List Produk</title>
    </head>
    
    <body>
                <table border='1' cellspacing='0'>
            <tr>
                <th>Switch</th>
            </tr>
            <%
                List<Switch> listProduk = new SwitchDAO().getAll();
                for (int i = 0; i < listProduk.size(); i++){
                    %>
                    <tr>
                        <td>
                            <ul>
                                <li> <%= listProduk.get(i).getNamaProduk()%> </li>
                                <li> <%= listProduk.get(i).getMerek()%> </li>
                                <li> <%= listProduk.get(i).getIdSwitchType()%> </li>
                                <li> <%= listProduk.get(i).getForceAction()%> </li>
                                <li> <%= listProduk.get(i).getHarga() %></li>
                            </ul>
                        </td>
                    </tr>
                    <%
                }     
            %>
        </table>
    </body>
</html>