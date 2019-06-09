package study.erik.trade.order.db;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import study.erik.trade.order.domain.entity.DraftOrder;

import java.util.List;

/**
 * @author erik.wang
 * @date 2019/06/09
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-application-context-xdal.xml"})
public class DraftOrderMapperTestWithSpringWithXdal {

    @Autowired
    private DraftOrderMapper draftOrderMapper;


    @Test
    public void test_find_by_buyer_id_and_business_type_id() {

        Long buyerId = 309319L;
        Integer businessTypeId = 201;
        List<DraftOrder> foundDraftOrders = draftOrderMapper.findByBuyerIdAndBusinessTypeId(buyerId, businessTypeId);
        Assert.assertNotNull(foundDraftOrders);
        Assert.assertEquals(19, foundDraftOrders.size());
    }

}
