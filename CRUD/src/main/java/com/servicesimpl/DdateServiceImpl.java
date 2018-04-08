package com.servicesimpl;
 
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.daoapi.DdateDao;
import com.entities.Ddate;
import com.servicesapi.DdateService;
 
@Service
public class DdateServiceImpl implements DdateService {
 
    @Autowired
    DdateDao ddateDao;
 
    public boolean saveOrUpdate(Ddate ddate) {
        return ddateDao.saveOrUpdate(ddate);
    }
 
    public List<Ddate> list() {
        // TODO Auto-generated method stub
        return ddateDao.list();
    }
 
    public boolean delete(Ddate ddate) {
        // TODO Auto-generated method stub
        return ddateDao.delete(ddate);
    }
 
}