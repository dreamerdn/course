import com.mysql.cj.jdbc.JdbcConnection;
import com.mysql.cj.jdbc.JdbcPreparedStatement;
import dbbinding.DbAttributeName;
import dbbinding.DbBindingException;
import dbbinding.impl.CarMakeBindingCommand;
import entity.CarMake;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CarMakeBindingCommandTest {

    @Test
    public void testGetTableName() {
        CarMakeBindingCommand carMakeBindingCommand = new CarMakeBindingCommand();
        String tableName = carMakeBindingCommand.getTableName();
        Assert.assertEquals("car_makes", tableName);
    }

    @Test
    public void testGetColumns() {
        CarMakeBindingCommand carMakeBindingCommand = new CarMakeBindingCommand();
        List<String> columns = carMakeBindingCommand.getColumns();
        Assert.assertEquals(1, columns.size());
        Assert.assertTrue(columns.contains(DbAttributeName.CAR_MAKE_NAME));
    }

    private Connection connection;
    private CarMakeBindingCommand carMakeBindingCommand;


}
