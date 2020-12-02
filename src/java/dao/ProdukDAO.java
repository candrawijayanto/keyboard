package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import koneksi.Koneksi;
import model.Produk;

public class ProdukDAO {
    public List <Produk> getAll(){
        Koneksi kon = new Koneksi();
        if (kon.getKon() == null){
            return null;
        }else{
            Statement state;
            ResultSet rs;
            List <Produk> listProduk = new ArrayList();
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM produk WHERE idKategori='SW' ");
                while(rs.next()){
                    Produk readProduk = new Produk();
                    readProduk.setIdProduk(rs.getString("idProduk"));
                    readProduk.setIdKategori(rs.getString("idKategori"));
                    readProduk.setNamaProduk(rs.getString("namaProduk"));
                    readProduk.setHarga(rs.getInt("harga"));
                    listProduk.add(readProduk);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println(e);
            }
            return listProduk;
        }
             
    }
}

   
