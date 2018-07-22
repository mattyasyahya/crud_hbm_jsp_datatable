/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Buku;

/**
 *
 * @author Windows
 */
@WebServlet(name = "getAll", urlPatterns = {"/getAll"})
public class getAll extends HttpServlet {
 SessionFactory factory =new AnnotationConfiguration().configure().buildSessionFactory();
Session session = factory.openSession();
Buku b;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet getAll</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet getAll at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
             response.setContentType("application/json;charset=UTF-8");
        response.setHeader("Cache-Control", "no-cache");
        PrintWriter out = response.getWriter();
     ArrayList arrData = new ArrayList();   
Gson gson = new Gson();
       try{
    session.beginTransaction();
List pegawai = session.createQuery("FROM Buku").list(); 
for (Iterator iterator = pegawai.iterator(); iterator.hasNext();)
{ 
b = (Buku) iterator.next(); 
String id=b.getId();
String kode=b.getKode_buku();
String judul=b.getJudul_buku();
String pengarang=b.getPengarang();
Map<String, String> lv = new HashMap<String, String>();
lv.put("id", id);
lv.put("kode", kode);
lv.put("judul", judul);
lv.put("pengarang", pengarang);
arrData.add(lv);
}
 Map<String, String> dataMap = new LinkedHashMap<String, String>();
            dataMap.put("data", gson.toJson(arrData));
              System.out.println(dataMap.put("data", gson.toJson(arrData)));
            out.println(dataMap.put("data", gson.toJson(arrData)));
            
session.getTransaction().commit();
}catch (HibernateException e) 
{ if (session!=null) session.getTransaction().rollback();
e.printStackTrace(); 
}finally 
{ 
   
}
}
    }

    

   
  

