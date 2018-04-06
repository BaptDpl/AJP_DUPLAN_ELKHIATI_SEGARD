package com.daoimpl;
 
import java.util.List;
 
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
 
import com.daoapi.ChildDao;
import com.entities.Child;
 
@Repository("ChildDao")
@Transactional
public class ChildImpl implements ChildDao {
 
    @Autowired
    SessionFactory session;
 
    public boolean saveOrUpdate(Child child) {
        // TODO Auto-generated method stub
        session.getCurrentSession().saveOrUpdate(child);

        return true;
    }
 
    public List<Child> list() {
        return session.getCurrentSession().createQuery("from Child").list();
    }
 
    public boolean delete(Child child) {
        try {
            session.getCurrentSession().delete(child);
        } catch (Exception ex) {
            return false;
        }
 
        return true;
    }
}