/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Donnhap;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class DonNhapDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Donnhap> getListDonnhap(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Donnhap> result = session.createCriteria(Donnhap.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Donnhap donnhap){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            donnhap.setMaHdn(donnhap.getMaHdn());
            System.out.println("Delete record");
            session.delete(donnhap);
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
    
    public boolean save(Donnhap donnhap){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            donnhap.setMaHdn(donnhap.getMaHdn());
            System.out.println("Inserting Record");
            session.saveOrUpdate(donnhap);
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
    public Donnhap getById(String id) {
        try {
            if (id == null) {
                return null;
            }
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            return (Donnhap) session.get(Donnhap.class, id);
        } catch (Exception e) {
            return null;
        }
    }
}
