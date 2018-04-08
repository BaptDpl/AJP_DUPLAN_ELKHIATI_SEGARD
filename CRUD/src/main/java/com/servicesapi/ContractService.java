package com.servicesapi;
 
import java.util.List;
import com.entities.Contract;
 
public interface ContractService {
    public boolean saveOrUpdate(Contract contract);
 
    public List<Contract> list();
 
    public boolean delete(Contract contract);
}