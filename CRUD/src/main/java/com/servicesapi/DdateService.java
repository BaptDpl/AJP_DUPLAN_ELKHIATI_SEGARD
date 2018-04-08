package com.servicesapi;
 
import java.util.List;
import com.entities.Ddate;
 
public interface DdateService {
    public boolean saveOrUpdate(Ddate ddate);
 
    public List<Ddate> list();
 
    public boolean delete(Ddate ddate);
}