package study.erik.trade.order.db;

import org.apache.ibatis.annotations.Param;
import study.erik.trade.order.domain.entity.DraftOrder;

import java.util.List;

/**
 * @author erik.wang
 * @date 2019/06/09
 **/
public interface DraftOrderMapper {

    DraftOrder findByDraftOrderId(Long draftOrderId);

    List<DraftOrder> findByBuyerId(Long buyerId);

    List<DraftOrder> findByBuyerIdAndBusinessTypeId(@Param("buyerId") Long buyerId, @Param("businessTypeId") Integer businessTypeId);

}
