package com.ganhuo.service.client;

import com.ganhuo.model.domain.AgentUser;

/**
 * Created by sunzhiqiang on 2016/8/23.
 */
public interface AgentUserService {

    /**
     * 修改地推人员账户信息
     *
     * @param agentUser
     */
    public void updateAgentUser(AgentUser agentUser);

    /**
     * 查看地推人员账户信息
     *
     * @param id
     * @return AgentUser
     */
    public AgentUser getById(Long id);

}
