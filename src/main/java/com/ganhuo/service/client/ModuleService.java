package com.ganhuo.service.client;

import com.ganhuo.model.domain.Module;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface ModuleService {

    /**
     * 获取模块信息
     * @return
     */
    List<Module> getModuleList();

    /**
     * 更新模块文章数量
     */
    void updateModuleCount(int type);
}
