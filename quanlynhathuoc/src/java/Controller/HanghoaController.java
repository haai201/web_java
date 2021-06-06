/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.HangHoaDao;
import Enities.Hanghoa;
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
@ManagedBean(name="HanghoaController")
@ViewScoped
public class HanghoaController {
    public List<Hanghoa> listhanghoa = new ArrayList();
    public HangHoaDao hanghoaDao = new HangHoaDao();
    public Hanghoa selectedHanghoa = new Hanghoa();
    public Hanghoa addHanghoa = new Hanghoa();
    
    private String optionIdNhacungcap = new String();
    private List<Nhacungcap> optionsNhacungcap = new ArrayList<>();
    private NhaCungCapDao nhaCungCapDao = new NhaCungCapDao();
    private List<String> optionstenNhacungcap = new ArrayList<>();
    
    
    @PostConstruct
    public void startup() {
        listhanghoa = hanghoaDao.getListHanghoa();
         
        optionsNhacungcap = nhaCungCapDao.getListNhacungcap();
        for(int i = 0; i < optionsNhacungcap.size(); i++) {
            optionstenNhacungcap.add(optionsNhacungcap.get(i).getTenNhaCc());
        }
        
        PrimeFaces.current().executeScript("PF('slecAddNhacungcap').selectValue('');");

    }
    
    public void editHanghoa(Hanghoa input){
        selectedHanghoa = SerializationUtils.clone(input);
        String s = new String();
        s = nhaCungCapDao.getById(selectedHanghoa.getNhacungcap().getMaNhaCc()).getTenNhaCc();    
        PrimeFaces.current().executeScript("PF('slecEditNhacungcap').selectValue('"+s+"');");
    }
    
    public void deleteHanghoa(Hanghoa chucnang){
        hanghoaDao.delete(chucnang);
        listhanghoa = hanghoaDao.getListHanghoa();
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Thông Báo","Xóa thành công"));
    }
    
    public void saveHanghoa() {
        FacesContext context = FacesContext.getCurrentInstance();
        Integer index = null;
        for(int i = 0; i < optionsNhacungcap.size(); i++) {
            if(optionIdNhacungcap.compareTo(optionsNhacungcap.get(i).getTenNhaCc()) == 0) {
                index = i;
                break;
            }
        }
        if (index != null) addHanghoa.setNhacungcap(optionsNhacungcap.get(index));

        hanghoaDao.save(addHanghoa);
        context.addMessage(null,new FacesMessage("Thông báo","Thêm mới thành công")); 
        PrimeFaces.current().executeScript("PF('slecAddNhacungcap').selectValue('');");
        listhanghoa = hanghoaDao.getListHanghoa();
        addHanghoa = new Hanghoa();
    }

    public void updateHanghoa() {
        FacesContext context = FacesContext.getCurrentInstance();
        Integer index = null;
        for(int i = 0; i < optionsNhacungcap.size(); i++) {
            if((optionIdNhacungcap != null) && optionIdNhacungcap.compareTo(optionsNhacungcap.get(i).getTenNhaCc()) == 0) {
                index = i;
                break;
            }
        }
        
        if (index != null) selectedHanghoa.setNhacungcap(optionsNhacungcap.get(index));
        hanghoaDao.save(selectedHanghoa);
        PrimeFaces.current().executeScript("PF('editDialog').hide();");
        context.addMessage(null,new FacesMessage("Thông báo", "Thêm mới thành công")); 
        listhanghoa = hanghoaDao.getListHanghoa();
        selectedHanghoa = new Hanghoa();
    }
        
    public List<Hanghoa> getListhanghoa() {
        return listhanghoa;
    }

    public void setListhanghoa(List<Hanghoa> listhanghoa) {
        this.listhanghoa = listhanghoa;
    }

    public HangHoaDao getHanghoaDao() {
        return hanghoaDao;
    }

    public void setHanghoaDao(HangHoaDao hanghoaDao) {
        this.hanghoaDao = hanghoaDao;
    }

    public Hanghoa getSelectedHanghoa() {
        return selectedHanghoa;
    }

    public void setSelectedHanghoa(Hanghoa selectedHanghoa) {
        this.selectedHanghoa = selectedHanghoa;
    }

    public Hanghoa getAddHanghoa() {
        return addHanghoa;
    }

    public void setAddHanghoa(Hanghoa addHanghoa) {
        this.addHanghoa = addHanghoa;
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
    

    
}
