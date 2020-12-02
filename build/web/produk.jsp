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
                    </tr>
                    <%
                }
            %>
            <form method="post" action='coba'>
                <input name='hallo'>
                <input type='file' name='berkas'>
                <input type='submit' value='kirim'>
            </form>
            
                
                
 
        </table>
    </body>
</html>