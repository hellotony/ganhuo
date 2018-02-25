package com.ganhuo.model.annotation.db;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 数据库表信息注解
 *
 * @author wuxu
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface Table {

    /**
     * 数据库表名称
     *
     * @return name
     */
    public String name();

    /**
     * 数据库表描述
     *
     * @return description
     */
    public String description();
}
