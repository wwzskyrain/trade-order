package study.erik.trade.order.domain.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author erik.wang
 * @date 2019/06/09
 **/
public class DraftOrder implements Serializable {


    private static final long serialVersionUID = 2020609669072510901L;

    private Long draftOrderId ;
    private Long buyerId ;
    private Integer domain;
    private Integer businessTypeId;
    private String unifiedOrderNo;
    private BigDecimal amount;
    private Integer statusId;
    private String context;
    private Date createTime;
    private Date lastUpdateTime;
    private Integer version;


    public Long getDraftOrderId() {
        return draftOrderId;
    }

    public void setDraftOrderId(Long draftOrderId) {
        this.draftOrderId = draftOrderId;
    }

    public Long getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(Long buyerId) {
        this.buyerId = buyerId;
    }

    public Integer getDomain() {
        return domain;
    }

    public void setDomain(Integer domain) {
        this.domain = domain;
    }

    public Integer getBusinessTypeId() {
        return businessTypeId;
    }

    public void setBusinessTypeId(Integer businessTypeId) {
        this.businessTypeId = businessTypeId;
    }

    public String getUnifiedOrderNo() {
        return unifiedOrderNo;
    }

    public void setUnifiedOrderNo(String unifiedOrderNo) {
        this.unifiedOrderNo = unifiedOrderNo;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }
}
