package com.daoapi;
 
import java.util.List;
 
import com.entities.Contract;
 
public interface ContractDao {
    public boolean saveOrUpdate(Contract contract);
 
    public List<Contract> list();
 
    public boolean delete(Contract contract);
}