package diaz.jsptest.persistence;

import diaz.jsptest.entity.User;

public interface UserDao {

    public boolean save(User user);

    public boolean update(User user);

    public boolean delete(User user);

    public User get(String userName);

    public boolean isExists(String userName);
}
