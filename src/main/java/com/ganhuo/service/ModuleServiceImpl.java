package com.ganhuo.service;

import com.ganhuo.mapper.ModuleMapper;
import com.ganhuo.model.domain.Module;
import com.ganhuo.service.client.ModuleService;
import org.springframework.stereotype.Service;

import java.util.List;
import javax.annotation.Resource;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Service("moduleService")
public class ModuleServiceImpl implements ModuleService {

    @Resource
    private ModuleMapper moduleMapper;

    @Override
    public List<Module> getModuleList() {
        return moduleMapper.getModuleList();
    }

    @Override
    public void updateModuleCount(int type) {
        moduleMapper.updateModuleCount(type);
    }

    @Override
    public Module getModuleById(Integer id) {
        return moduleMapper.getModuleById(id);
    }
}
