/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.DonBanDao;
import Enities.Donban;
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
@ManagedBean(name="DonbanController")
@ViewScoped
public class DonbanController {
    public List<Donban> listdonban = new ArrayList();
    public DonBanDao donbanDao = new DonBanDao();
    public Donban selectedDonban = new Donban();
    public Donban addDonban = new Donban();
    
    @PostConstruct
    public void startup() {
        listdonban = donbanDao.getListDonban();
    }
    
    public void editDonban(Donban input){
        selectedDonban = SerializationUtils.clone(input);
    }
    
    public void updateDonban() {
        FacesContext context = FacesContext.getCurrentInstance();
        donbanDao.save(selectedDonban);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        startup();
        addDonban = new Donban();
    }
    public void deleteDonban(Donban chucnang){
        donbanDao.delete(chucnang);
        startup();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveDonban() {
        FacesContext context = FacesContext.getCurrentInstance();
        donbanDao.save(addDonban);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        startup();
        addDonban = new Donban();
    }

    public List<Donban> getListdonban() {
        return listdonban;
    }

    public void setListdonban(List<Donban> listdonban) {
        this.listdonban = listdonban;
    }

    public DonBanDao getDonbanDao() {
        return donbanDao;
    }

    public void setDonbanDao(DonBanDao donbanDao) {
        this.donbanDao = donbanDao;
    }

    public Donban getSelectedDonban() {
        return selectedDonban;
    }

    public void setSelectedDonban(Donban selectedDonban) {
        this.selectedDonban = selectedDonban;
    }

    public Donban getAddDonban() {
        return addDonban;
    }

    public void setAddDonban(Donban addDonban) {
        this.addDonban = addDonban;
    }
    
 
    
    public String formatDate(Date input){
        if(input == null) return "";
        return new SimpleDateFormat("dd/MM/yyyy").format(input);
    }
}
