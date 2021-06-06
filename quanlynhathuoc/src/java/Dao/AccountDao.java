/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Enities.Account;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ADMIN
 */
public class AccountDao {
    private final SessionFactory sf= HibernateUtil.getSessionFactory();
    
    public List<Account> getListAccount(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            List<Account> result = session.createCriteria(Account.class).list();
            return result;
        }
        catch (Exception ex){
            return new ArrayList<>();
        } 
        finally {
            session.close();
        }
    }
    
    public boolean delete(Account account){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            account.setUsers(account.getUsers());
            System.out.println("Delete record");
            session.delete(account);
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
    
    public boolean save(Account account){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            account.setUsers(account.getUsers());
            System.out.println("Inserting Record");
            session.saveOrUpdate(account);
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
