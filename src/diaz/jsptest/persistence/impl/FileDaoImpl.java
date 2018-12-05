package diaz.jsptest.persistence.impl;

import diaz.jsptest.entity.File;
import diaz.jsptest.persistence.FileDao;

public class FileDaoImpl implements FileDao {
    @Override
    public boolean save(File file) {
        return false;
    }

    @Override
    public boolean update(File file) {
        return false;
    }

    @Override
    public boolean delete(File file) {
        return false;
    }

    @Override
    public File get(String fileName) {
        return null;
    }

    @Override
    public boolean isExists(String fileName) {
        return false;
    }

    @Override
    public boolean getList(String fileName) {
        return false;
    }
}
