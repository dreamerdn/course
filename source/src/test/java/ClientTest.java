import entity.Client;
import org.junit.Assert;
import org.junit.Test;

public class ClientTest {

    @Test
    public void testGettersAndSetters() {
        Client client = new Client();

        client.setName("John");
        Assert.assertEquals("John", client.getName());

        client.setSurname("Doe");
        Assert.assertEquals("Doe", client.getSurname());

        client.setPatronymic("Smith");
        Assert.assertEquals("Smith", client.getPatronymic());

        client.setPassportId("AB123456");
        Assert.assertEquals("AB123456", client.getPassportId());

        client.setHomePhone("123456789");
        Assert.assertEquals("123456789", client.getHomePhone());

        client.setMobilePhone("987654321");
        Assert.assertEquals("987654321", client.getMobilePhone());

        client.setEmail("john.doe@example.com");
        Assert.assertEquals("john.doe@example.com", client.getEmail());

        client.setDiscountCardId(12345);
        Assert.assertEquals(12345, client.getDiscountCardId());
    }
}
