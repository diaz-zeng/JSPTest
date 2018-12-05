package diaz.jsptest.proxy;


import diaz.jsptest.utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.lang.reflect.Proxy;

@SuppressWarnings("unchecked")
public class DaoProxy {
    public static <T> T getProxy(Class clazz) {
        return (T) Proxy.newProxyInstance(clazz.getClassLoader(), clazz.getInterfaces(), ((proxy, method, args) -> {
            Object result = null;
            Session session = HibernateUtils.getCurrentSessionSession();
            Transaction transaction = session.beginTransaction();
            try {
                result = method.invoke(clazz.newInstance(), args);
                transaction.commit();
            } catch (Exception e) {
                transaction.rollback();
            } finally {
                return result;
            }
        }));
    }
}
