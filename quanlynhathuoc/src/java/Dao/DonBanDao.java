/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Donban;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class DonBanDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Donban> getListDonban(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Donban> result = session.createCriteria(Donban.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Donban donban){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            donban.setMaHdb(donban.getMaHdb());
            System.out.println("Delete record");
            session.delete(donban);
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
    
    public boolean save(Donban donban){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            donban.setMaHdb(donban.getMaHdb());
            System.out.println("Inserting Record");
            session.saveOrUpdate(donban);
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
    public Donban getById(String id) {
        try {
            if (id == null) {
                return null;
            }
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            return (Donban) session.get(Donban.class, id);
        } catch (Exception e) {
            return null;
        }
    }
}
