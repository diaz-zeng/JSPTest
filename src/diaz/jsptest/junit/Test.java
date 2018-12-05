package diaz.jsptest.junit;

import diaz.jsptest.entity.User;
import diaz.jsptest.persistence.UserDao;
import diaz.jsptest.persistence.impl.UserDaoImpl;
import diaz.jsptest.proxy.DaoProxy;

public class Test {
    @org.junit.Test
    public void test1(){
        User user = new User();
        user.setUserName("Tom");
        UserDao userDao = DaoProxy.getProxy(UserDaoImpl.class);
        userDao.save(user);
    }
}
