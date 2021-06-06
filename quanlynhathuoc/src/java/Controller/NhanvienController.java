/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.NhanVienDao;
import Enities.Nhanvien;
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
@ManagedBean(name="NhanvienController")
@ViewScoped

public class NhanvienController {
    public List<Nhanvien> listnhanvien = new ArrayList();
    public NhanVienDao nhanvienDao = new NhanVienDao();
    public Nhanvien selectedNhanvien = new Nhanvien();
    public Nhanvien addNhanvien = new Nhanvien();
    
    public NhanvienController(){
    }
    
    @PostConstruct
    public void startup() {
        listnhanvien = nhanvienDao.getListNhanvien();
    }
    
    public void editNhanvien(Nhanvien input){
        selectedNhanvien = SerializationUtils.clone(input);
    }
    
    public void deleteNhanvien(Nhanvien chucnang){
        nhanvienDao.delete(chucnang);
        startup();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveNhanvien() {
        FacesContext context = FacesContext.getCurrentInstance();
        nhanvienDao.save(addNhanvien);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        startup();
        addNhanvien = new Nhanvien();
    }

    public List<Nhanvien> getListnhanvien() {
        return listnhanvien;
    }

    public void setListnhanvien(List<Nhanvien> listnhanvien) {
        this.listnhanvien = listnhanvien;
    }

    public NhanVienDao getNhanVienDao() {
        return nhanvienDao;
    }

    public void setNhanVienDao(NhanVienDao nhanvienDao) {
        this.nhanvienDao = nhanvienDao;
    }

    public Nhanvien getSelectedNhanvien() {
        return selectedNhanvien;
    }

    public void setSelectedNhanvien(Nhanvien selectedNhanvien) {
        this.selectedNhanvien = selectedNhanvien;
    }

    public Nhanvien getAddNhanvien() {
        return addNhanvien;
    }

    public void setAddNhanvien(Nhanvien addNhanvien) {
        this.addNhanvien = addNhanvien;
    }
    
    public void updateNhanvien() {
        FacesContext context = FacesContext.getCurrentInstance();
        nhanvienDao.save(selectedNhanvien);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        startup();
        addNhanvien = new Nhanvien();
    }
    
    public String formatDate(Date input){
        if(input == null) return "";
        return new SimpleDateFormat("dd/MM/yyyy").format(input);
    }
}
