package diaz.jsptest.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public final class HibernateUtils{
    private static SessionFactory sessionFactory;

    static {
        try {
            Configuration cfg = new Configuration();
            cfg.configure();
            sessionFactory = cfg.buildSessionFactory();
        } catch (ExceptionInInitializerError e) {
            throw new ExceptionInInitializerError("初始化失败，请检查配置文件");
        }
    }

    public static Session getCurrentSessionSession() {
        return sessionFactory.getCurrentSession();
    }
}
