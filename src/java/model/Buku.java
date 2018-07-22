/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author Windows
 */
@Entity
public class Buku implements Serializable
{
@Id
     @GeneratedValue(generator="system-uuid")
@GenericGenerator(name="system-uuid", strategy="uuid")    
private String id;
private String Kode_buku;
private String judul_buku;
private String pengarang;

public Buku()
{

}
public Buku(String Kode_buku, String judul_buku, String pengarang)
{

this.Kode_buku=Kode_buku;
this.judul_buku=judul_buku;
this.pengarang=pengarang;
}
    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the Kode_buku
     */
    public String getKode_buku() {
        return Kode_buku;
    }

    /**
     * @param Kode_buku the Kode_buku to set
     */
    public void setKode_buku(String Kode_buku) {
        this.Kode_buku = Kode_buku;
    }

    /**
     * @return the judul_buku
     */
    public String getJudul_buku() {
        return judul_buku;
    }

    /**
     * @param judul_buku the judul_buku to set
     */
    public void setJudul_buku(String judul_buku) {
        this.judul_buku = judul_buku;
    }

    /**
     * @return the pengarang
     */
    public String getPengarang() {
        return pengarang;
    }

    /**
     * @param pengarang the pengarang to set
     */
    public void setPengarang(String pengarang) {
        this.pengarang = pengarang;
    }
}
