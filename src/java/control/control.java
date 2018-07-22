/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import model.Buku;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 *
 * @author Windows
 */
public class control 
{
SessionFactory factory =new AnnotationConfiguration().configure().buildSessionFactory();
Session session = factory.openSession();
Buku b;

public void save(String Kode_buku, String judul_buku, String pengarang)
{
            try{
session.beginTransaction();
 b=new Buku( Kode_buku,  judul_buku,  pengarang);
session.save(b);
session.getTransaction().commit();
session.close();
} catch (Exception e)
{
System.out.println(" error.... " + e.getMessage());
}
}
public void edit(String id,String Kode_buku, String judul_buku, String pengarang)
{
   try{
session.beginTransaction();
b = (Buku)session.get(Buku.class, id); 
b.setJudul_buku(judul_buku);
b.setKode_buku(Kode_buku);
b.setPengarang(pengarang);
session.update(b);
session.getTransaction().commit();
session.close();
} catch (Exception e)
{
System.out.println("control_wo error.... " + e.getMessage());
}
}

public void Delete(String id)
    {
        try{
session.beginTransaction();
b = (Buku)session.get(Buku.class, id); 
session.delete(b);
session.getTransaction().commit();
session.close();
} catch (Exception e)
{
System.out.println(" error.... " + e.getMessage());
}
    }
}
