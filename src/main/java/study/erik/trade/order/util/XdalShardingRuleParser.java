package study.erik.trade.order.util;

/**
 * @author erik.wang
 * @date 2019/06/09
 **/
public class XdalShardingRuleParser {

    public static int parseDbIndex(Integer businessTypeId){
        return 0;
    }

    public static long parseTbIndex(long buyerId) {
        return buyerId % 100;
    }

}
