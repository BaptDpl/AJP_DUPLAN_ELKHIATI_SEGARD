package com.daoapi;
 
import java.util.List;
 
import com.entities.Child;
 
public interface ChildDao {
    public boolean saveOrUpdate(Child child);
 
    public List<Child> list();
 
    public boolean delete(Child child);
}