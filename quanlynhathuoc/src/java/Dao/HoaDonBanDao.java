/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Hoadonban;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class HoaDonBanDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Hoadonban> getListHoadonban(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Hoadonban> result = session.createCriteria(Hoadonban.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Hoadonban hoadonban){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            hoadonban.setNgayBan(hoadonban.getNgayBan());
            System.out.println("Delete record");
            session.delete(hoadonban);
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
    
    public boolean save(Hoadonban hoadonban){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            hoadonban.setNgayBan(hoadonban.getNgayBan());
            System.out.println("Inserting Record");
            session.saveOrUpdate(hoadonban);
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
