package ${packageName}.repo;

import java.util.List;

/**
 * Created by Choota.
 */

public interface Crud {
    public int create(Object item);
    public int update(Object item);
    public int delete(Object item);
    public Object findById(int id);
    public List<?> findAll();
}
