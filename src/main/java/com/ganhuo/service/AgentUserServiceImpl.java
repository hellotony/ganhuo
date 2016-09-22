package com.ganhuo.service;

import com.ganhuo.mapper.AgentUserMapper;
import com.ganhuo.model.annotation.SelectOne;
import com.ganhuo.model.domain.AgentUser;
import com.ganhuo.service.client.AgentUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

@Service("agentUserService")
public class AgentUserServiceImpl implements AgentUserService {
	
	private static final Logger LOG = LoggerFactory.getLogger(AgentUserServiceImpl.class);

	
	@Resource
	private AgentUserMapper agentUserMapper;


	@Override
	public void updateAgentUser(AgentUser agentUser) {

	}

	@Override
	@SelectOne
	public AgentUser getById(Long id) {
		return agentUserMapper.getAgentUserById(id);
	}


}
