/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.AccountDao;
import Enities.Account;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import org.apache.commons.lang3.SerializationUtils;
import org.primefaces.PrimeFaces;

/**
 *
 * @author ADMIN
 */
@ManagedBean(name="AccountController")
@ViewScoped
public class AccountController {
    
    public List<Account> listaccount = new ArrayList();
    public AccountDao accountDao = new AccountDao();
    public Account selectedAccount = new Account();
    public Account addAccount = new Account();
    
    @PostConstruct
    public void startup() {
        listaccount = accountDao.getListAccount();
    }
    
    public void editAccount(Account input){
        selectedAccount = SerializationUtils.clone(input);
    }
    
    public void deleteAccount(Account chucnang){
        accountDao.delete(chucnang);
        startup();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveAccount() {
        FacesContext context = FacesContext.getCurrentInstance();
        accountDao.save(addAccount);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        startup();
        addAccount = new Account();
    }

    public List<Account> getListaccount() {
        return listaccount;
    }

    public void setListaccount(List<Account> listaccount) {
        this.listaccount = listaccount;
    }

    public AccountDao getAccountDao() {
        return accountDao;
    }

    public void setAccountDao(AccountDao accountDao) {
        this.accountDao = accountDao;
    }

    public Account getSelectedAccount() {
        return selectedAccount;
    }

    public void setSelectedAccount(Account selectedAccount) {
        this.selectedAccount = selectedAccount;
    }

    public Account getAddAccount() {
        return addAccount;
    }

    public void setAddAccount(Account addAccount) {
        this.addAccount = addAccount;
    }
    
    public void updateAccount() {
        FacesContext context = FacesContext.getCurrentInstance();
        accountDao.save(selectedAccount);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        startup();
        addAccount = new Account();
    }
    
    public String formatDate(Date input){
        if(input == null) return "";
        return new SimpleDateFormat("dd/MM/yyyy").format(input);
    }
}
