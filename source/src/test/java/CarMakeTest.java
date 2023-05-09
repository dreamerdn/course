import entity.CarMake;
import org.junit.Assert;
import org.junit.Test;

public class CarMakeTest {

    @Test
    public void testGetName() {
        CarMake carMake = new CarMake();
        carMake.setName("Toyota");

        Assert.assertEquals("Toyota", carMake.getName());
    }

    @Test
    public void testSetName() {
        CarMake carMake = new CarMake();
        carMake.setName("Honda");

        Assert.assertEquals("Honda", carMake.getName());
    }

}

