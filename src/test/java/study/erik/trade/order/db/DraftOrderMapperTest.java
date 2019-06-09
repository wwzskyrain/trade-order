package study.erik.trade.order.db;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import study.erik.trade.order.domain.entity.DraftOrder;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

/**
 * @author erik.wang
 * @date 2019/06/09
 **/
public class DraftOrderMapperTest {

    private static SqlSessionFactory sqlSessionFactory;

    @BeforeClass
    public static void init() {
        try {
            Reader reader = Resources.getResourceAsReader("mybatis-config-c3p0.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            reader.close();
        } catch (IOException ignore) {
            ignore.printStackTrace();
        }
    }

    @Test
    public void test_find_by_id(){

        SqlSession sqlSession = sqlSessionFactory.openSession();
        try{
            DraftOrderMapper draftOrderMapper = sqlSession.getMapper(DraftOrderMapper.class);
            Long id = 2019060411901054329L;
            DraftOrder foundDraftOrder = draftOrderMapper.findByDraftOrderId(id);
            Assert.assertNotNull(foundDraftOrder);
            Assert.assertEquals(id,foundDraftOrder.getDraftOrderId());
        }finally {
            sqlSession.close();
        }
    }

    @Test
    public void test_find_by_buyer_id(){
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try{
            DraftOrderMapper draftOrderMapper = sqlSession.getMapper(DraftOrderMapper.class);
            Long buyerId = 309319L;
            List<DraftOrder> foundDraftOrders = draftOrderMapper.findByBuyerId(buyerId);
            Assert.assertNotNull(foundDraftOrders);
            Assert.assertEquals(19,foundDraftOrders.size());
        }finally {
            sqlSession.close();
        }
    }

}

