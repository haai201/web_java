/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.KhachHangDao;
import Enities.Khachhang;
import java.util.ArrayList;
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
@ManagedBean(name="KhachhangController")
@ViewScoped
public class KhachhangController {
    public List<Khachhang> listkhachhang = new ArrayList();
    public KhachHangDao khachhangDao = new KhachHangDao();
    public Khachhang selectedKhachhang = new Khachhang();
    public Khachhang addKhachhang = new Khachhang();
    
    @PostConstruct
    public void startup() {
        listkhachhang = khachhangDao.getListKhachhang();
    }
    
    public void editKhachhang(Khachhang input){
        selectedKhachhang = SerializationUtils.clone(input);
    }
    
    public void deleteKhachhang(Khachhang chucnang){
        khachhangDao.delete(chucnang);
        startup();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveKhachhang() {
        FacesContext context = FacesContext.getCurrentInstance();
        khachhangDao.save(addKhachhang);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        startup();
        addKhachhang = new Khachhang();
    }

    public List<Khachhang> getListkhachhang() {
        return listkhachhang;
    }

    public void setListkhachhang(List<Khachhang> listkhachhang) {
        this.listkhachhang = listkhachhang;
    }

    public KhachHangDao getKhachhangDao() {
        return khachhangDao;
    }

    public void setKhachhangDao(KhachHangDao khachhangDao) {
        this.khachhangDao = khachhangDao;
    }

    public Khachhang getSelectedKhachhang() {
        return selectedKhachhang;
    }

    public void setSelectedKhachhang(Khachhang selectedKhachhang) {
        this.selectedKhachhang = selectedKhachhang;
    }

    public Khachhang getAddKhachhang() {
        return addKhachhang;
    }

    public void setAddKhachhang(Khachhang addKhachhang) {
        this.addKhachhang = addKhachhang;
    }
    
    public void updateKhachhang() {
        FacesContext context = FacesContext.getCurrentInstance();
        khachhangDao.save(selectedKhachhang);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        startup();
        addKhachhang = new Khachhang();
    }
    
  
}
