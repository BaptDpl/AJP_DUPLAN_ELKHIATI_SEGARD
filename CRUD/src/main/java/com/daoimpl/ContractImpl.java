package com.daoimpl;
 
import java.util.List;
 
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
 
import com.daoapi.ContractDao;
import com.entities.Contract;
 
@Repository("ContractDao")

@Transactional
public class ContractImpl implements ContractDao {
 
    @Autowired
    SessionFactory session2;
 
    public boolean saveOrUpdate(Contract contract) {
        // TODO Auto-generated method stub
        session2.getCurrentSession().saveOrUpdate(contract);

        return true;
    }
 
    public List<Contract> list() {
        return session2.getCurrentSession().createQuery("from Contract").list();
    }
 
    public boolean delete(Contract contract) {
        try {
            session2.getCurrentSession().delete(contract);
        } catch (Exception ex) {
            return false;
        }
 
        return true;
    }
}