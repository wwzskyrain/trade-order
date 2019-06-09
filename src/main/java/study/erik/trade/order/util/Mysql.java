package study.erik.trade.order.util;

/**
 * @author erik.wang
 * @date 2019/06/09
 **/
public class Mysql {

    public static void main(String[] args) {

        String pattern = "CREATE TABLE CRD_DRAFT_ORDER_%02d LIKE CRD_DRAFT_ORDER_00;";
        for (int i = 1; i < 100; i++) {
            System.out.printf(pattern + "\n",i);
        }

    }

}
