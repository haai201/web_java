/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Hanghoa;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class HangHoaDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Hanghoa> getListHanghoa(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Hanghoa> result = session.createCriteria(Hanghoa.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Hanghoa hanghoa){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            hanghoa.setMaHh(hanghoa.getMaHh());
            System.out.println("Delete record");
            session.delete(hanghoa);
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
    
    public boolean save(Hanghoa hanghoa){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            hanghoa.setMaHh(hanghoa.getMaHh());
            System.out.println("Inserting Record");
            session.saveOrUpdate(hanghoa);
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
    public Hanghoa getById(String id) {
        try {
            if (id == null) {
                return null;
            }
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            return (Hanghoa) session.get(Hanghoa.class, id);
        } catch (Exception e) {
            return null;
        }
    }
}
