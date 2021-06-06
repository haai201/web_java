/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.HoaDonBanDao;
import Dao.DonBanDao;
import Dao.KhachHangDao;
import Dao.NhanVienDao;
import Enities.Hoadonban;
import Enities.Donban;
import Enities.Khachhang;
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
@ManagedBean(name="HoadonbanController")
@ViewScoped

public class HoadonbanController {
    public List<Hoadonban> listhoadonban = new ArrayList();
    public HoaDonBanDao hoadonbanDao = new HoaDonBanDao();
    public Hoadonban selectedHoadonban = new Hoadonban();
    public Hoadonban addHoadonban = new Hoadonban();
    
    private String optionIdDonban = new String();
    private List<Donban> optionsDonban = new ArrayList<>();
    private DonBanDao donBanDao = new DonBanDao();
    private List<String> optionstenDonban = new ArrayList<>();
    
    private String optionIdKhachhang = new String();
    private List<Khachhang> optionsKhachhang = new ArrayList<>();
    private KhachHangDao khachHangDao = new KhachHangDao();
    private List<String> optionstenKhachhang = new ArrayList<>();
    
    private String optionIdNhanvien = new String();
    private List<Nhanvien> optionsNhanvien = new ArrayList<>();
    private NhanVienDao nhanVienDao = new NhanVienDao();
    private List<String> optionstenNhanvien = new ArrayList<>();
    
    @PostConstruct
    public void startup() {
        listhoadonban = hoadonbanDao.getListHoadonban();
        
        optionsDonban = donBanDao.getListDonban();
        for(int i = 0; i < optionsDonban.size(); i++) {
            optionstenDonban.add(optionsDonban.get(i).getMaHdb());
        }
        PrimeFaces.current().executeScript("PF('slecAddDonban').selectValue('');");
        
        optionsKhachhang = khachHangDao.getListKhachhang();
        for(int i = 0; i < optionsKhachhang.size(); i++) {
            optionstenKhachhang.add(optionsKhachhang.get(i).getTenKh());
        }
        PrimeFaces.current().executeScript("PF('slecAddKhachhang').selectValue('');");
        
        optionsNhanvien = nhanVienDao.getListNhanvien();
        for(int i = 0; i < optionsNhanvien.size(); i++) {
            optionstenNhanvien.add(optionsNhanvien.get(i).getTenNv());
        }
        PrimeFaces.current().executeScript("PF('slecAddNhanvien').selectValue('');");
    }
    
    public void editHoadonban(Hoadonban input){
        selectedHoadonban = SerializationUtils.clone(input);
String s1 = new String();
        s1 = donBanDao.getById(selectedHoadonban.getDonban().getMaHdb()).getMaHdb();    
        PrimeFaces.current().executeScript("PF('slecEditDonban').selectValue('"+s1+"');");
        
        String s2 = new String();
        s2 = khachHangDao.getById(selectedHoadonban.getKhachhang().getMaKh()).getTenKh();    
        PrimeFaces.current().executeScript("PF('slecEditKhachhang').selectValue('"+s2+"');");
        
        String s3 = new String();
        s3 = nhanVienDao.getById(selectedHoadonban.getNhanvien().getMaNv()).getTenNv();    
        PrimeFaces.current().executeScript("PF('slecEditNhanvien').selectValue('"+s3+"');");
    }
    
    public void deleteHoadonban(Hoadonban chucnang){
        hoadonbanDao.delete(chucnang);
        listhoadonban=hoadonbanDao.getListHoadonban();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveHoadonban() {
        FacesContext context = FacesContext.getCurrentInstance();
        
        Integer index1 = null;
        for(int i = 0; i < optionsDonban.size(); i++) {
            if(optionIdDonban.compareTo(optionsDonban.get(i).getMaHdb()) == 0) {
                index1 = i;
                break;
            }
        }if (index1 != null) addHoadonban.setDonban(optionsDonban.get(index1));
        
        Integer index2 = null;
        for(int i = 0; i < optionsKhachhang.size(); i++) {
            if(optionIdKhachhang.compareTo(optionsKhachhang.get(i).getTenKh()) == 0) {
                index2 = i;
                break;
            }
        }if (index2 != null) addHoadonban.setKhachhang(optionsKhachhang.get(index2));
        
        Integer index3 = null;
        for(int i = 0; i < optionsNhanvien.size(); i++) {
            if(optionIdNhanvien.compareTo(optionsNhanvien.get(i).getTenNv()) == 0) {
                index3 = i;
                break;
            }
        }
        if (index3 != null) addHoadonban.setNhanvien(optionsNhanvien.get(index3));
        
        hoadonbanDao.save(addHoadonban);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        PrimeFaces.current().executeScript("PF('slecAddDonban').selectValue('');");
        PrimeFaces.current().executeScript("PF('slecAddKhachhang').selectValue('');");
        PrimeFaces.current().executeScript("PF('slecAddNhanvien').selectValue('');");
        listhoadonban=hoadonbanDao.getListHoadonban();
        addHoadonban = new Hoadonban();
    }

        public void updateHoadonban() {
        FacesContext context = FacesContext.getCurrentInstance();
        
        Integer index1 = null;
        for(int i = 0; i < optionsDonban.size(); i++) {
            if((optionIdDonban != null) && optionIdDonban.compareTo(optionsDonban.get(i).getMaHdb()) == 0) {
                index1 = i;
                break;
            }
}if (index1 != null) selectedHoadonban.setDonban(optionsDonban.get(index1));
        
        Integer index2 = null;
        for(int i = 0; i < optionsKhachhang.size(); i++) {
            if((optionIdKhachhang != null) && optionIdKhachhang.compareTo(optionsKhachhang.get(i).getTenKh()) == 0) {
                index2 = i;
                break;
            }
        }if (index2 != null) selectedHoadonban.setKhachhang(optionsKhachhang.get(index2));
        
        Integer index3 = null;
        for(int i = 0; i < optionsNhanvien.size(); i++) {
            if((optionIdNhanvien != null) && optionIdNhanvien.compareTo(optionsNhanvien.get(i).getTenNv()) == 0) {
                index3 = i;
                break;
            }
        }if (index3 != null) selectedHoadonban.setNhanvien(optionsNhanvien.get(index3));
        
        hoadonbanDao.save(selectedHoadonban);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        listhoadonban=hoadonbanDao.getListHoadonban();
        addHoadonban = new Hoadonban();
    }
  
    public List<Hoadonban> getListhoadonban() {
        return listhoadonban;
    }

    public void setListhoadonban(List<Hoadonban> listhoadonban) {
        this.listhoadonban = listhoadonban;
    }

    public HoaDonBanDao getHoadonbanDao() {
        return hoadonbanDao;
    }

    public void setHoadonbanDao(HoaDonBanDao hoadonbanDao) {
        this.hoadonbanDao = hoadonbanDao;
    }

    public Hoadonban getSelectedHoadonban() {
        return selectedHoadonban;
    }

    public void setSelectedHoadonban(Hoadonban selectedHoadonban) {
        this.selectedHoadonban = selectedHoadonban;
    }

    public Hoadonban getAddHoadonban() {
        return addHoadonban;
    }

    public void setAddHoadonban(Hoadonban addHoadonban) {
        this.addHoadonban = addHoadonban;
    }
    
    public String getOptionIdDonban() {
        return optionIdDonban;
    }

    public void setOptionIdDonban(String optionIdDonban) {
        this.optionIdDonban = optionIdDonban;
    }

    public List<Donban> getOptionsDonban() {
        return optionsDonban;
    }

    public void setOptionsDonban(List<Donban> optionsDonban) {
        this.optionsDonban = optionsDonban;
    }

    public DonBanDao getDonBanDao() {
        return donBanDao;
    }

    public void setDonBanDao(DonBanDao donBanDao) {
        this.donBanDao = donBanDao;
    }

    public List<String> getOptionstenDonban() {
        return optionstenDonban;
    }

    public void setOptionstenDonban(List<String> optionstenDonban) {
        this.optionstenDonban = optionstenDonban;
    }
    
    public String getOptionIdKhachhang() {
        return optionIdKhachhang;
    }

    public void setOptionIdKhachhang(String optionIdKhachhang) {
        this.optionIdKhachhang = optionIdKhachhang;
    }

    public List<Khachhang> getOptionsKhachhang() {
        return optionsKhachhang;
}

    public void setOptionsKhachhang(List<Khachhang> optionsKhachhang) {
        this.optionsKhachhang = optionsKhachhang;
    }

    public KhachHangDao getKhachHangDao() {
        return khachHangDao;
    }

    public void setKhachHangDao(KhachHangDao khachHangDao) {
        this.khachHangDao = khachHangDao;
    }

    public List<String> getOptionstenKhachhang() {
        return optionstenKhachhang;
    }

    public void setOptionstenKhachhang(List<String> optionstenKhachhang) {
        this.optionstenKhachhang = optionstenKhachhang;
    }
    
    public String getOptionIdNhanvien() {
        return optionIdNhanvien;
    }

    public void setOptionIdNhanvien(String optionIdNhanvien) {
        this.optionIdNhanvien = optionIdNhanvien;
    }

    public List<Nhanvien> getOptionsNhanvien() {
        return optionsNhanvien;
    }

    public void setOptionsNhanvien(List<Nhanvien> optionsNhanvien) {
        this.optionsNhanvien = optionsNhanvien;
    }

    public NhanVienDao getNhanVienDao() {
        return nhanVienDao;
    }

    public void setNhanVienDao(NhanVienDao nhanVienDao) {
        this.nhanVienDao = nhanVienDao;
    }

    public List<String> getOptionstenNhanvien() {
        return optionstenNhanvien;
    }

    public void setOptionstenNhanvien(List<String> optionstenNhanvien) {
        this.optionstenNhanvien = optionstenNhanvien;
    }
    
    public String formatDate(Date input){
        if(input == null) return "";
        return new SimpleDateFormat("dd/MM/yyyy").format(input);
    }
}