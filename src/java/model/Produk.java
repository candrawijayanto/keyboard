package model;


public class Produk {
    private String idProduk;
    private String idKategori;
    private String namaProduk;
    private float harga;
    
    public String getIdProduk(){
        return idProduk;
    }
    public void setIdProduk(String idProduk){
        this.idProduk = idProduk;
    }
    
    public String getIdKategori(){
        return idKategori;
    }
    public void setIdKategori(String idKategori){
        this.idKategori = idKategori;
    }
    
    public String getNamaProduk(){
        return namaProduk;
    }
    public void setNamaProduk(String namaProduk){
        this.namaProduk = namaProduk;
    }
    
    public float getHarga(){
        return harga;
    }
    public void setHarga(float harga){
        this.harga = harga;
    }
}
