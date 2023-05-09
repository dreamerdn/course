import entity.Order;
import org.junit.Assert;
import org.junit.Test;

import java.time.LocalDate;

public class OrderTest {

    @Test
    public void testGettersAndSetters() {
        Order order = new Order();

        order.setClientId(1);
        Assert.assertEquals(1, order.getClientId());

        order.setCarId(2);
        Assert.assertEquals(2, order.getCarId());

        LocalDate startDate = LocalDate.of(2023, 5, 1);
        order.setStartDate(startDate);
        Assert.assertEquals(startDate, order.getStartDate());

        LocalDate endDate = LocalDate.of(2023, 5, 7);
        order.setEndDate(endDate);
        Assert.assertEquals(endDate, order.getEndDate());
    }

}
