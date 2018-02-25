package com.ganhuo.mapper;

import com.ganhuo.model.domain.AgentUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface AgentUserMapper {

    /**
     * 创建中介人员账户信息
     *
     * @param agentUser
     */
    public void insertAgentUser(AgentUser agentUser);

    /**
     * 更新中介人员账户信息
     *
     * @param agentUser
     */
    public void updateAgentUser(AgentUser agentUser);

    /**
     * 根据ID查看中介人员账户信息
     *
     * @param id
     * @return AgentUser
     */
    public AgentUser getAgentUserById(Long id);

    /**
     * 查看中介人员账户信息列表
     *
     * @param offset 从第几条数据开始搜索,分页用
     * @param count  查询数量,分页用
     * @return List -> AgentUser
     */
    public List<AgentUser> getAllAgentUser(@Param("offset") int offset, @Param("count") int count);

    /**
     * 查看中介人员账户信息的数量
     *
     * @return int
     */
    public int getCountOfAgentUser();

    /**
     * 根据ID删除中介人员账户信息
     *
     * @param id
     */
    public void deleteAgentUserById(Long id);

    /**
     * 根据手机号，获取agentUser对象
     *
     * @param mobile
     * @return
     */
    public AgentUser getAgentUserByMobile(@Param("mobile") String mobile);

    /**
     * 根据contractId，返回agentUser对象
     *
     * @param contractId
     * @return
     */
    public List<AgentUser> getAgentUserByContractId(@Param("contractId") Long contractId);

    /**
     * 查询地推用户的直属下线ID
     *
     * @param agentUserId 地推用户ID
     * @return Set[Long]
     */
    public Set<Long> getAgentUserIdsOfHenchman(@Param("agentUserId") Long agentUserId);

    /**
     * 根据promoCode，返回agentUser对象
     *
     * @param promoCode
     * @return
     */
    public AgentUser getAgentUserByPromoCode(@Param("promoCode") String promoCode);

    /**
     * 根据地推人员ID，判断合同是否有效
     *
     * @param id
     * @return
     */
    public Integer checkContractEffectByUserId(@Param("id") Long id);
}
