package com.ganhuo.mapper;

import com.ganhuo.model.domain.Module;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface ModuleMapper {

    void insert(Module module);

    Module getModuleById(Long id);

    Module getFirstModule();

    List<Module> getModuleListByType(Integer typeId);

    List<Module> getModuleList();

    void updateModuleCount(@Param("type") int type);
}
