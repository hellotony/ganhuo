package com.ganhuo.model.domain;

import com.ganhuo.model.annotation.db.Column;
import com.ganhuo.model.annotation.db.Table;
import com.ganhuo.model.domain.base.BaseEntity;

/**
 * 地推人员账户信息
 */
@Table(name = "agent_user", description = "地推人员账户信息")
public class AgentUser extends BaseEntity {

    private static final long serialVersionUID = 7990516831176372984L;

    @Column(name = "name", description = "姓名")
    private String name;

    @Column(name = "mobile", description = "手机号")
    private String mobile;

    @Column(name = "uid", description = "用户中心ID")
    private Long uid;

    /**
     */
    @Column(name = "level", description = "等级")
    private int level;

    @Column(name = "bank_name", description = "银行名称")
    private String bankName;

    @Column(name = "bank_account", description = "银行账号")
    private String bankAccount;

    @Column(name = "identity_no", description = "身份证号")
    private String identityNo;

    @Column(name = "parent_id", description = "父级ID")
    private Long parentId;

    @Column(name = "contract_id", description = "合同ID")
    private Long contractId;

    @Column(name = "enable_brokerage", description = "是否发佣")
    private boolean enableBrokerage;

    @Column(name = "enable_online_brokerage", description = "是否线上发佣")
    private boolean enableOnlineBrokerage;

    @Column(name = "enable_login", description = "是否可以登陆")
    private boolean enableLogin;

    @Column(name = "promo_code", description = "推介码")
    private String promoCode;

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public boolean isEnableLogin() {
        return enableLogin;
    }

    public void setEnableLogin(boolean enableLogin) {
        this.enableLogin = enableLogin;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getBankAccount() {
        return bankAccount;
    }

    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount;
    }

    public String getIdentityNo() {
        return identityNo;
    }

    public void setIdentityNo(String identityNo) {
        this.identityNo = identityNo;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public Long getContractId() {
        return contractId;
    }

    public void setContractId(Long contractId) {
        this.contractId = contractId;
    }

    public boolean isEnableBrokerage() {
        return enableBrokerage;
    }

    public void setEnableBrokerage(boolean enableBrokerage) {
        this.enableBrokerage = enableBrokerage;
    }

    public boolean isEnableOnlineBrokerage() {
        return enableOnlineBrokerage;
    }

    public void setEnableOnlineBrokerage(boolean enableOnlineBrokerage) {
        this.enableOnlineBrokerage = enableOnlineBrokerage;
    }

    public String getPromoCode() {
        return promoCode;
    }

    public void setPromoCode(String promoCode) {
        this.promoCode = promoCode;
    }

}
