package com.daoimpl;
 
import java.util.List;
 
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
 
import com.daoapi.DdateDao;
import com.entities.Ddate;
 
@Repository("DdateDao")
@Transactional
public class DdateImpl implements DdateDao {
 
    @Autowired
    SessionFactory session;
 
    public boolean saveOrUpdate(Ddate ddate) {
        // TODO Auto-generated method stub
        session.getCurrentSession().saveOrUpdate(ddate);

        return true;
    }
 
    public List<Ddate> list() {
        return session.getCurrentSession().createQuery("from Ddate").list();
    }
 
    public boolean delete(Ddate ddate) {
        try {
            session.getCurrentSession().delete(ddate);
        } catch (Exception ex) {
            return false;
        }
 
        return true;
    }
}