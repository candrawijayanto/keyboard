<%@page import="dao.SwitchDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Switch"%>
<%@page import="dao.ProdukDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Produk"%>
<%@page import="koneksi.Pilih"%>

<!DOCTYPE html>
<html>
    <head>
        <title>List Produk</title>
    </head>
    
    <body>
                <table border='1' cellspacing='0'>
            <tr>
                <th>ID Produk</th>
                <th>ID Kategori Produk</th>
                <th>Nama Produk</th>
                <th>Harga</th>
                <th>Detail</th>
            </tr>
            <%
                List<Produk> listProduk = new ProdukDAO().getAll();
                for (int i = 0; i < listProduk.size(); i++){
            %>
                    <tr>
                        <td> <%= listProduk.get(i).getIdProduk()%> </td>
                        <td> <%= listProduk.get(i).getIdKategori()%> </td>
                        <td> <%= listProduk.get(i).getNamaProduk()%> </td>
                        <td> <%= listProduk.get(i).getHarga()%> </td>
                        <td> <a href='produk.jsp?idProduk=<%= listProduk.get(i).getIdProduk()%>'>Klik Untuk Detail</a>
                    </tr>
            <%
                }
                out.println("</table>");
                if( request.getParameter("idProduk") != null){
                    out.println("<h3>Detail Switch</h3>");
                    out.println("<table border='1' cellspacing='0'>");
                    out.println("<tr>");
                        out.println("<th>Nama Produk</th>");
                        out.println("<th>Tipe Switch</th>");
                        out.println("<th>Force Action</th>");
                        out.println("<th>Action</th>");
                    ArrayList<Switch> detailSwitch = new SwitchDAO().getDetail(request.getParameter("idProduk"));
                    for(Switch s: detailSwitch){
                        out.println("<tr>");
                            out.println("<td>"+s.getNamaProduk()+"</td>");
                            out.println("<td>"+s.getIdSwitchType()+"</td>");
                            out.println("<td>"+s.getForceAction()+"</td>");
                            out.println("<td><a href='produk.jsp'>Tutup Detail</a></td>");
                        out.println("</tr>");
                    }
                    out.print("</table>");
                }
                
            %>
    </body>
</html>