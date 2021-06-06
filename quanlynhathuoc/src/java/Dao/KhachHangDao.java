/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Hoadonnhap;
import Enities.Khachhang;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class KhachHangDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Khachhang> getListKhachhang(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Khachhang> result = session.createCriteria(Khachhang.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Khachhang khachhang){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            khachhang.setMaKh(khachhang.getMaKh());
            System.out.println("Delete record");
            session.delete(khachhang);
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
    
    public boolean save(Khachhang khachhang){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            khachhang.setMaKh(khachhang.getMaKh());
            System.out.println("Inserting Record");
            session.saveOrUpdate(khachhang);
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

    public void save(Hoadonnhap addHoadonnhap) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Hoadonnhap> getListHoadonnhap() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete(Hoadonnhap chucnang) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Khachhang getById(String id) {
        try {
            if (id == null) {
                return null;
            }
Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            return (Khachhang) session.get(Khachhang.class, id);
        } catch (Exception e) {
            return null;
        }
    }
}