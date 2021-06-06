/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.DonNhapDao;
import Enities.Donnhap;
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
@ManagedBean(name="DonnhapController")
@ViewScoped
public class DonnhapController {
    public List<Donnhap> listdonnhap = new ArrayList();
    public DonNhapDao donnhapDao = new DonNhapDao();
    public Donnhap selectedDonnhap = new Donnhap();
    public Donnhap addDonnhap = new Donnhap();
    
    @PostConstruct
    public void startup() {
        listdonnhap = donnhapDao.getListDonnhap();
    }
    
    public void editDonnhap(Donnhap input){
        selectedDonnhap = SerializationUtils.clone(input);
    }
    
    public void deleteDonnhap(Donnhap chucnang){
        donnhapDao.delete(chucnang);
        startup();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveDonnhap() {
        FacesContext context = FacesContext.getCurrentInstance();
        donnhapDao.save(addDonnhap);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        startup();
        addDonnhap = new Donnhap();
    }

    public List<Donnhap> getListdonnhap() {
        return listdonnhap;
    }

    public void setListdonnhap(List<Donnhap> listdonnhap) {
        this.listdonnhap = listdonnhap;
    }

    public DonNhapDao getDonnhapDao() {
        return donnhapDao;
    }

    public void setDonnhapDao(DonNhapDao donnhapDao) {
        this.donnhapDao = donnhapDao;
    }

    public Donnhap getSelectedDonnhap() {
        return selectedDonnhap;
    }

    public void setSelectedDonnhap(Donnhap selectedDonnhap) {
        this.selectedDonnhap = selectedDonnhap;
    }

    public Donnhap getAddDonnhap() {
        return addDonnhap;
    }

    public void setAddDonnhap(Donnhap addDonnhap) {
        this.addDonnhap = addDonnhap;
    }
    
    public void updateDonnhap() {
        FacesContext context = FacesContext.getCurrentInstance();
        donnhapDao.save(selectedDonnhap);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        startup();
        addDonnhap = new Donnhap();
    }
    
    public String formatDate(Date input){
        if(input == null) return "";
        return new SimpleDateFormat("dd/MM/yyyy").format(input);
    }
}
