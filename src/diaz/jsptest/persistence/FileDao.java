package diaz.jsptest.persistence;

import diaz.jsptest.entity.File;

public interface FileDao {
    public boolean save(File file);

    public boolean update(File file);

    public boolean delete(File file);

    public File get(String fileName);

    public boolean isExists(String fileName);

    public boolean getList(String fileName);
}
