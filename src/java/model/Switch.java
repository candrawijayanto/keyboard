package model;

public class Switch {
    private String idProduk;
    private String idKategori;
    private String namaProduk;
    private String idSwitchType;
    private String forceAction;
    private String merek;
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
   
    public String getIdSwitchType(){
        return idSwitchType;
    }
    public void setIdSwitchType(String idSwitchType){
        this.idSwitchType = idSwitchType;
    }
    
    public String getForceAction(){
        return forceAction;
    }
    public void setForceAction(String forceAction){
        this.forceAction = forceAction;
    }
    
    public String getMerek(){
        return merek;
    }
    public void setMerek(String merek){
        this.merek = merek; 
    }
    
    public float getHarga(){
        return harga;
    }
    public void setHarga(float harga){
        this.harga = harga;
    }
}
