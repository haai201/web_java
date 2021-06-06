/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import Dao.NhaCungCapDao;
import Enities.Nhacungcap;
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

@ManagedBean(name="NhacungcapController")
@ViewScoped
public class NhacungcapController {
    
public List<Nhacungcap> listnhacungcap = new ArrayList();
    public NhaCungCapDao nhacungcapDao = new NhaCungCapDao();
    public Nhacungcap selectedNhacungcap = new Nhacungcap();
    public Nhacungcap addNhacungcap = new Nhacungcap();
    
    @PostConstruct
    public void startup() {
        listnhacungcap = nhacungcapDao.getListNhacungcap();
    }
    
    public void editNhacungcap(Nhacungcap input){
        selectedNhacungcap = SerializationUtils.clone(input);
    }
    
    public void deleteNhacungcap(Nhacungcap chucnang){
        nhacungcapDao.delete(chucnang);
        startup();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveNhacungcap() {
        FacesContext context = FacesContext.getCurrentInstance();
        nhacungcapDao.save(addNhacungcap);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        startup();
        addNhacungcap = new Nhacungcap();
    }

    public List<Nhacungcap> getListnhacungcap() {
        return listnhacungcap;
    }

    public void setListnhacungcap(List<Nhacungcap> listnhacungcap) {
        this.listnhacungcap = listnhacungcap;
    }

    public NhaCungCapDao getNhacungcapDao() {
        return nhacungcapDao;
    }

    public void setNhacungcapDao(NhaCungCapDao nhacungcapDao) {
        this.nhacungcapDao = nhacungcapDao;
    }

    public Nhacungcap getSelectedNhacungcap() {
        return selectedNhacungcap;
    }

    public void setSelectedNhacungcap(Nhacungcap selectedNhacungcap) {
        this.selectedNhacungcap = selectedNhacungcap;
    }

    public Nhacungcap getAddNhacungcap() {
        return addNhacungcap;
    }

    public void setAddNhacungcap(Nhacungcap addNhacungcap) {
        this.addNhacungcap = addNhacungcap;
    }
    
    public void updateNhacungcap() {
        FacesContext context = FacesContext.getCurrentInstance();
        nhacungcapDao.save(selectedNhacungcap);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        startup();
        addNhacungcap = new Nhacungcap();
    }
  
}
