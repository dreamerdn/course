import entity.Entity;
import org.junit.Assert;
import org.junit.Test;

public class EntityTest {

    @Test
    public void testGetId() {
        Entity entity = new EntityImpl();
        entity.setId(123);

        Assert.assertEquals(123, entity.getId());
    }

    @Test
    public void testSetId() {
        Entity entity = new EntityImpl();
        entity.setId(456);

        Assert.assertEquals(456, entity.getId());
    }

    private static class EntityImpl extends Entity {
        // Пустая реализация для абстрактного класса Entity
    }
}

