import entity.Car;
import org.junit.Assert;
import org.junit.Test;

public class CarTest {

    @Test
    public void testGettersAndSetters() {
        Car car = new Car();

        car.setYear(2021);
        Assert.assertEquals(2021, car.getYear());

        car.setMakeId(1);
        Assert.assertEquals(1, car.getMakeId());

        car.setModel("Camry");
        Assert.assertEquals("Camry", car.getModel());

        car.setRegistrationNumber("ABC123");
        Assert.assertEquals("ABC123", car.getRegistrationNumber());

        car.setMileage(10000);
        Assert.assertEquals(10000, car.getMileage());

        car.setGearboxType(1);
        Assert.assertEquals(1, car.getGearboxType());

        car.setPricePerDay(50.0f);
        Assert.assertEquals(50.0f, car.getPricePerDay(), 0.01);

        car.setPricePerDay2(60.0f);
        Assert.assertEquals(60.0f, car.getPricePerDay2(), 0.01);
    }

}

