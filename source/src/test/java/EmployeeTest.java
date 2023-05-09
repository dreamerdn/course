import entity.Employee;
import org.junit.Assert;
import org.junit.Test;

public class EmployeeTest {

    @Test
    public void testGettersAndSetters() {
        Employee employee = new Employee();

        employee.setLogin("john.doe");
        Assert.assertEquals("john.doe", employee.getLogin());

        employee.setPassword("secretpassword");
        Assert.assertEquals("secretpassword", employee.getPassword());
    }
}
