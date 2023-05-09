import dbbinding.DbAttributeName;
import dbbinding.DbBindingException;
import dbbinding.impl.CarBinding;
import entity.Car;
import org.junit.Assert;
import org.junit.Test;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CarBindingTest {

    @Test
    public void testGetTableName() {
        CarBinding carBinding = new CarBinding();
        String tableName = carBinding.getTableName();
        Assert.assertEquals("cars", tableName);
    }

    @Test
    public void testGetColumns() {
        CarBinding carBinding = new CarBinding();
        List<String> columns = carBinding.getColumns();
        Assert.assertEquals(8, columns.size());
        Assert.assertTrue(columns.contains(DbAttributeName.YEAR));
        Assert.assertTrue(columns.contains(DbAttributeName.MAKE_ID));
        Assert.assertTrue(columns.contains(DbAttributeName.MODEL));
        Assert.assertTrue(columns.contains(DbAttributeName.REGISTRATION_NUMBER));
        Assert.assertTrue(columns.contains(DbAttributeName.MILEAGE));
        Assert.assertTrue(columns.contains(DbAttributeName.GEARBOX_TYPE));
        Assert.assertTrue(columns.contains(DbAttributeName.PRICE_PER_DAY));
        Assert.assertTrue(columns.contains(DbAttributeName.PRICE_PER_DAY2));
    }
}
