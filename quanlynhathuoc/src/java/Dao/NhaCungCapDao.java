/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Nhacungcap;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class NhaCungCapDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Nhacungcap> getListNhacungcap(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Nhacungcap> result = session.createCriteria(Nhacungcap.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Nhacungcap nhacungcap){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            nhacungcap.setMaNhaCc(nhacungcap.getMaNhaCc());
            System.out.println("Delete record");
            session.delete(nhacungcap);
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
    
    public boolean save(Nhacungcap nhacungcap){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            nhacungcap.setMaNhaCc(nhacungcap.getMaNhaCc());
            System.out.println("Inserting Record");
            session.saveOrUpdate(nhacungcap);
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
       public Nhacungcap getById(String id) {
        try {
            if (id == null) {
                return null;
            }
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            return (Nhacungcap) session.get(Nhacungcap.class, id);
        } catch (Exception e) {
            return null;
        }
    }
}
