package study.erik.trade.order.db;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.ibatis.datasource.unpooled.UnpooledDataSourceFactory;

/**
 * @author erik.wang
 * @date 2019/06/09
 **/
public class C3p0DataSourceFactory extends UnpooledDataSourceFactory {

    public C3p0DataSourceFactory(){
        this.dataSource=new ComboPooledDataSource();
    }

}
