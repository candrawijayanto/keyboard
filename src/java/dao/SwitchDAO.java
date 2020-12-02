package dao;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Switch;
import koneksi.Koneksi;

public class SwitchDAO {
    public ArrayList<Switch> getAll(){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Switch> listSwitch = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM produk INNER JOIN detailSwitch ON produk.idProduk = detailSwitch.idProduk");
                while(rs.next()){
                    Switch sw = new Switch();
                    sw.setIdProduk(rs.getString("idProduk"));
                    sw.setIdKategori(rs.getString("idKategori"));
                    sw.setNamaProduk(rs.getString("namaProduk"));
                    sw.setIdSwitchType(rs.getString("idSwitchType"));
                    sw.setForceAction(rs.getString("forceAction"));
                    sw.setMerek(rs.getString("merek"));
                    sw.setHarga(rs.getFloat("harga"));
                    
                    listSwitch.add(sw);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listSwitch;
        }
    }
    
    
        public ArrayList<Switch> getDetail(String idProduk){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Switch> listSwitch = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM produk INNER JOIN detailSwitch ON produk.idProduk = detailSwitch.idProduk WHERE produk.idProduk = '"+idProduk+"'");
                while(rs.next()){
                    Switch sw = new Switch();
                    sw.setIdProduk(rs.getString("idProduk"));
                    sw.setIdKategori(rs.getString("idKategori"));
                    sw.setNamaProduk(rs.getString("namaProduk"));
                    sw.setIdSwitchType(rs.getString("idSwitchType"));
                    sw.setForceAction(rs.getString("forceAction"));
                    sw.setMerek(rs.getString("merek"));
                    sw.setHarga(rs.getFloat("harga"));
                    
                    listSwitch.add(sw);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listSwitch;
        }
    }
}
