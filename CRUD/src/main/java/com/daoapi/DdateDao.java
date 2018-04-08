package com.daoapi;
 
import java.util.List;
 
import com.entities.Ddate;
 
public interface DdateDao {
    public boolean saveOrUpdate(Ddate ddate);
 
    public List<Ddate> list();
 
    public boolean delete(Ddate ddate);
}