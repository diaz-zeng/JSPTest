package diaz.jsptest.utils;

import diaz.jsptest.proxy.DaoProxy;

public class BeanFactory {
    public static <T> T getBean(Class<T> clazz) {
        T t = null;
        try {
            if (clazz.getName().endsWith("DaoImpl")) {
                t = DaoProxy.getProxy(clazz);
            } else {
                t = clazz.newInstance();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return t;
        }

    }

}
