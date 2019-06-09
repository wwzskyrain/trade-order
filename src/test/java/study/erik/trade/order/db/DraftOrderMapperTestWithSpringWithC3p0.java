package study.erik.trade.order.db;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
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
@ContextConfiguration(locations = {"classpath:spring-application-context-c3p0.xml"})
public class DraftOrderMapperTestWithSpringWithC3p0 {

    @Autowired
    private DraftOrderMapper draftOrderMapper;

    @Test
    public void test_find_by_id() {

        Long id = 2019060411901054329L;
        DraftOrder foundDraftOrder = draftOrderMapper.findByDraftOrderId(id);
        Assert.assertNotNull(foundDraftOrder);
        Assert.assertEquals(id, foundDraftOrder.getDraftOrderId());

    }

    @Test
    public void test_find_by_buyer_id() {

        Long buyerId = 309319L;
        List<DraftOrder> foundDraftOrders = draftOrderMapper.findByBuyerId(buyerId);
        Assert.assertNotNull(foundDraftOrders);
        Assert.assertEquals(19, foundDraftOrders.size());

    }

}
