/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Hoadonnhap;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class HoaDonNhapDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Hoadonnhap> getListHoadonnhap(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Hoadonnhap> result = session.createCriteria(Hoadonnhap.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Hoadonnhap hoadonnhap){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            hoadonnhap.setNgayNhap(hoadonnhap.getNgayNhap());
            System.out.println("Delete record");
            session.delete(hoadonnhap);
            transaction.commit();
            System.out.println("Done !");
            return true;   
        }
        catch (Exception ex){
            transaction.rollback();
            return false;
        }
        finally {
            session.close();
        }
    }
    
    public boolean save(Hoadonnhap hoadonnhap){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            hoadonnhap.setNgayNhap(hoadonnhap.getNgayNhap());
            System.out.println("Inserting Record");
            session.saveOrUpdate(hoadonnhap);
            transaction.commit();
            System.out.println("Done !");
            return true;   
        }
        catch (Exception ex){
            transaction.rollback();
            return false;
        }
        finally {
            session.close();
        }
    }
}
