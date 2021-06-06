/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Nhanvien;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class NhanVienDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Nhanvien> getListNhanvien(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Nhanvien> result = session.createCriteria(Nhanvien.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Nhanvien nhanvien){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            nhanvien.setMaNv(nhanvien.getMaNv());
            System.out.println("Delete record");
            session.delete(nhanvien);
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
    
    public boolean save(Nhanvien nhanvien){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            nhanvien.setMaNv(nhanvien.getMaNv());
            System.out.println("Inserting Record");
            session.saveOrUpdate(nhanvien);
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

   public Nhanvien getById(String id) {
        try {
            if (id == null) {
                return null;
            }
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            return (Nhanvien) session.get(Nhanvien.class, id);
        } catch (Exception e) {
            return null;
        }
    }
}

