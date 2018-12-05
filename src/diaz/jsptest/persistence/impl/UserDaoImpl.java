package diaz.jsptest.persistence.impl;

import diaz.jsptest.entity.User;
import diaz.jsptest.utils.HibernateUtils;
import diaz.jsptest.persistence.UserDao;
import org.hibernate.Session;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

public class UserDaoImpl implements UserDao {


    @Override
    public boolean save(User user) {
        try {
            Session session = HibernateUtils.getCurrentSessionSession();
            return 0 < (Long) session.save(user);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(User user) {
        try {
            Session session = HibernateUtils.getCurrentSessionSession();
            session.update(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean delete(User user) {
        try {
            Session session = HibernateUtils.getCurrentSessionSession();
            session.delete(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public User get(String userName) {
        Session session = HibernateUtils.getCurrentSessionSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<User> criteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> from = criteriaQuery.from(User.class);
        criteriaQuery.select(from);
        Predicate predicate = criteriaBuilder.equal(from.get("user_name"), userName);
        criteriaQuery.where(predicate);
        return session.createQuery(criteriaQuery).getSingleResult();
    }

    @Override
    public boolean isExists(String userName) {
        return get(userName) != null;
    }
}
