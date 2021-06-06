/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import Dao.DonNhapDao;
import Dao.HangHoaDao;
import Dao.HoaDonNhapDao;
import Dao.NhaCungCapDao;
import Dao.NhanVienDao;
import Enities.Donnhap;
import Enities.Hanghoa;
import Enities.Hoadonnhap;
import Enities.Nhacungcap;
import Enities.Nhanvien;
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

@ManagedBean(name="HoadonnhapController")
@ViewScoped
public class HoadonnhapController {
    
public List<Hoadonnhap> listhoadonnhap = new ArrayList();
    public HoaDonNhapDao hoadonnhapDao = new HoaDonNhapDao();
    public Hoadonnhap selectedHoadonnhap = new Hoadonnhap();
    public Hoadonnhap addHoadonnhap = new Hoadonnhap();
    
    private String optionIdDonnhap = new String();
    private List<Donnhap> optionsDonnhap = new ArrayList<>();
    private DonNhapDao donNhapDao = new DonNhapDao();
    private List<String> optionstenDonnhap = new ArrayList<>();
    
    private String optionIdNhacungcap = new String();
    private List<Nhacungcap> optionsNhacungcap = new ArrayList<>();
    private NhaCungCapDao nhaCungCapDao = new NhaCungCapDao();
    private List<String> optionstenNhacungcap = new ArrayList<>();
    
    private String optionIdHanghoa = new String();
    private List<Hanghoa> optionsHanghoa = new ArrayList<>();
    private HangHoaDao hangHoaDao = new HangHoaDao();
    private List<String> optionstenHanghoa = new ArrayList<>();
    
    private String optionIdNhanvien = new String();
    private List<Nhanvien> optionsNhanvien = new ArrayList<>();
    private NhanVienDao nhanVienDao = new NhanVienDao();
    private List<String> optionstenNhanvien = new ArrayList<>();
    
    @PostConstruct
    public void startup() {
        listhoadonnhap = hoadonnhapDao.getListHoadonnhap();
        
        optionsDonnhap = donNhapDao.getListDonnhap();
        for(int i = 0; i < optionsDonnhap.size(); i++) {
            optionstenDonnhap.add(optionsDonnhap.get(i).getMaHdn());
        }
        PrimeFaces.current().executeScript("PF('slecAddDonNhap').selectValue('');");
        
        optionsNhacungcap = nhaCungCapDao.getListNhacungcap();
        for(int i = 0; i < optionsNhacungcap.size(); i++) {
            optionstenNhacungcap.add(optionsNhacungcap.get(i).getTenNhaCc());
        }       
        PrimeFaces.current().executeScript("PF('slecAddNhacungcap').selectValue('');");
        
        optionsHanghoa = hangHoaDao.getListHanghoa();
        for(int i = 0; i < optionsHanghoa.size(); i++) {
optionstenHanghoa.add(optionsHanghoa.get(i).getTenHh());
        }
        
        PrimeFaces.current().executeScript("PF('slecAddNhanvien').selectValue('');");
        
        optionsNhanvien = nhanVienDao.getListNhanvien();
        for(int i = 0; i < optionsNhanvien.size(); i++) {
            optionstenNhanvien.add(optionsNhanvien.get(i).getTenNv());
        }        
        PrimeFaces.current().executeScript("PF('slecAddNhanvien').selectValue('');");
    }
    
    public void editHoadonnhap(Hoadonnhap input){
        selectedHoadonnhap = SerializationUtils.clone(input);
        
        String s1 = new String();
        s1 = donNhapDao.getById(selectedHoadonnhap.getDonnhap().getMaHdn()).getMaHdn();    
        PrimeFaces.current().executeScript("PF('slecEditDonnhap').selectValue('"+s1+"');");
        
        String s2 = new String();
        s2 = nhaCungCapDao.getById(selectedHoadonnhap.getNhacungcap().getMaNhaCc()).getTenNhaCc();    
        PrimeFaces.current().executeScript("PF('slecEditNhacungcap').selectValue('"+s2+"');");
        
        String s3 = new String();
        s3 = hangHoaDao.getById(selectedHoadonnhap.getHanghoa().getMaHh()).getTenHh();    
        PrimeFaces.current().executeScript("PF('slecEditHanghoa').selectValue('"+s3+"');");
        
        String s4 = new String();
        s4 = nhanVienDao.getById(selectedHoadonnhap.getNhanvien().getMaNv()).getTenNv();    
        PrimeFaces.current().executeScript("PF('slecEditNhanvien').selectValue('"+s4+"');");
    }
    
    public void deleteHoadonnhap(Hoadonnhap chucnang){
        hoadonnhapDao.delete(chucnang);
        listhoadonnhap=hoadonnhapDao.getListHoadonnhap();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveHoadonnhap() {
        FacesContext context = FacesContext.getCurrentInstance();
        
        Integer index1 = null;
        for(int i = 0; i < optionsDonnhap.size(); i++) {
            if(optionIdDonnhap.compareTo(optionsDonnhap.get(i).getMaHdn()) == 0) {
                index1 = i;
                break;
            }
        }if (index1 != null) addHoadonnhap.setDonnhap(optionsDonnhap.get(index1));
        
        Integer index2 = null;
        for(int i = 0; i < optionsNhacungcap.size(); i++) {
            if(optionIdNhacungcap.compareTo(optionsNhacungcap.get(i).getTenNhaCc()) == 0) {
                index2 = i;
                break;
            }
        }if (index2 != null) addHoadonnhap.setNhacungcap(optionsNhacungcap.get(index2));
        
        Integer index3 = null;
        for(int i = 0; i < optionsHanghoa.size(); i++) {
            if(optionIdHanghoa.compareTo(optionsHanghoa.get(i).getTenHh()) == 0) {
                index3 = i;
                break;
            }
        }if (index3 != null) addHoadonnhap.setHanghoa(optionsHanghoa.get(index3));
        
        Integer index4 = null;
for(int i = 0; i < optionsNhanvien.size(); i++) {
            if(optionIdNhanvien.compareTo(optionsNhanvien.get(i).getTenNv()) == 0) {
                index4 = i;
                break;
            }
        }if (index4 != null) addHoadonnhap.setNhanvien(optionsNhanvien.get(index4));
        
        hoadonnhapDao.save(addHoadonnhap);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        PrimeFaces.current().executeScript("PF('slecAddDonnhap').selectValue('');");
        PrimeFaces.current().executeScript("PF('slecAddNhacungcap').selectValue('');");
        PrimeFaces.current().executeScript("PF('slecAddHanghoa').selectValue('');");
        PrimeFaces.current().executeScript("PF('slecAddNhanvien').selectValue('');");
        listhoadonnhap=hoadonnhapDao.getListHoadonnhap();
        addHoadonnhap = new Hoadonnhap();
    }
    
    public void updateHoadonnhap() {
        FacesContext context = FacesContext.getCurrentInstance();
        
        Integer index1 = null;
        for(int i = 0; i < optionsDonnhap.size(); i++) {
            if((optionIdDonnhap != null) && optionIdDonnhap.compareTo(optionsDonnhap.get(i).getMaHdn()) == 0) {
                index1 = i;
                break;
            }
        }if (index1 != null) selectedHoadonnhap.setDonnhap(optionsDonnhap.get(index1));
        
        Integer index2 = null;
        for(int i = 0; i < optionsNhacungcap.size(); i++) {
            if((optionIdNhacungcap != null) && optionIdNhacungcap.compareTo(optionsNhacungcap.get(i).getTenNhaCc()) == 0) {
                index2 = i;
                break;
            }
        }if (index2 != null) selectedHoadonnhap.setNhacungcap(optionsNhacungcap.get(index2));
        
        Integer index3 = null;
        for(int i = 0; i < optionsHanghoa.size(); i++) {
            if((optionIdHanghoa != null) && optionIdHanghoa.compareTo(optionsHanghoa.get(i).getTenHh()) == 0) {
                index3 = i;
                break;
            }
        }if (index3 != null) selectedHoadonnhap.setHanghoa(optionsHanghoa.get(index3));
        
        Integer index4 = null;
        for(int i = 0; i < optionsNhanvien.size(); i++) {
            if((optionIdNhanvien != null) && optionIdNhanvien.compareTo(optionsNhanvien.get(i).getTenNv()) == 0) {
                index4 = i;
                break;
            }
        }if (index4 != null) selectedHoadonnhap.setNhanvien(optionsNhanvien.get(index4));
        
        hoadonnhapDao.save(selectedHoadonnhap);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công"));
        listhoadonnhap=hoadonnhapDao.getListHoadonnhap();
        addHoadonnhap = new Hoadonnhap();
    }

    public List<Hoadonnhap> getListhoadonnhap() {
        return listhoadonnhap;
    }

    public void setListhoadonnhap(List<Hoadonnhap> listhoadonnhap) {
        this.listhoadonnhap = listhoadonnhap;
    }
public HoaDonNhapDao getHoadonnhapDao() {
        return hoadonnhapDao;
    }

    public void setHoadonnhapDao(HoaDonNhapDao hoadonnhapDao) {
        this.hoadonnhapDao = hoadonnhapDao;
    }

    public Hoadonnhap getSelectedHoadonnhap() {
        return selectedHoadonnhap;
    }

    public void setSelectedHoadonnhap(Hoadonnhap selectedHoadonnhap) {
        this.selectedHoadonnhap = selectedHoadonnhap;
    }

    public Hoadonnhap getAddHoadonnhap() {
        return addHoadonnhap;
    }

    public void setAddHoadonnhap(Hoadonnhap addHoadonnhap) {
        this.addHoadonnhap = addHoadonnhap;
    }

    public String getOptionIdDonnhap() {
        return optionIdDonnhap;
    }

    public void setOptionIdDonnhap(String optionIdDonnhap) {
        this.optionIdDonnhap = optionIdDonnhap;
    }

    public List<Donnhap> getOptionsDonnhap() {
        return optionsDonnhap;
    }

    public void setOptionsDonnhap(List<Donnhap> optionsDonnhap) {
        this.optionsDonnhap = optionsDonnhap;
    }

    public DonNhapDao getDonNhapDao() {
        return donNhapDao;
    }

    public void setDonNhapDao(DonNhapDao donNhapDao) {
        this.donNhapDao = donNhapDao;
    }

    public List<String> getOptionstenDonnhap() {
        return optionstenDonnhap;
    }

    public void setOptionstenDonnhap(List<String> optionstenDonnhap) {
        this.optionstenDonnhap = optionstenDonnhap;
    }
    
    public String getOptionIdNhacungcap() {
        return optionIdNhacungcap;
    }

    public void setOptionIdNhacungcap(String optionIdNhacungcap) {
        this.optionIdNhacungcap = optionIdNhacungcap;
    }

    public List<Nhacungcap> getOptionsNhacungcap() {
        return optionsNhacungcap;
    }

    public void setOptionsNhacungcap(List<Nhacungcap> optionsNhacungcap) {
        this.optionsNhacungcap = optionsNhacungcap;
    }

    public NhaCungCapDao getNhaCungCapDao() {
        return nhaCungCapDao;
    }

    public void setNhaCungCapDao(NhaCungCapDao nhaCungCapDao) {
        this.nhaCungCapDao = nhaCungCapDao;
    }

    public List<String> getOptionstenNhacungcap() {
        return optionstenNhacungcap;
    }

    public void setOptionstenNhacungcap(List<String> optionstenNhacungcap) {
        this.optionstenNhacungcap = optionstenNhacungcap;
    }
    
    public String getOptionIdHanghoa() {
        return optionIdHanghoa;
    }

    public void setOptionIdHanghoa(String optionIdHanghoa) {
        this.optionIdHanghoa = optionIdHanghoa;
    }

    public List<Hanghoa> getOptionsHanghoa() {
        return optionsHanghoa;
    }

    public void setOptionsHanghoa(List<Hanghoa> optionsHanghoa) {
        this.optionsHanghoa = optionsHanghoa;
    }

    public HangHoaDao getHangHoaDao() {
        return hangHoaDao;
    }

    public void setHangHoaDao(HangHoaDao hangHoaDao) {
        this.hangHoaDao = hangHoaDao;
    }

    public List<String> getOptionstenHanghoa() {
        return optionstenHanghoa;
    }
public void setOptionstenHanghoa(List<String> optionstenHanghoa) {
        this.optionstenHanghoa = optionstenHanghoa;
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
}