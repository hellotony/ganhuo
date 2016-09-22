package com.ganhuo.model.annotation.db;

import java.lang.annotation.*;

/**
 * 数据库表信息注解
 * @author wuxu
 * */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface Table {

	/**
	 * 数据库表名称
	 * @return name
	 */
	public String name();
	
	/**
	 * 数据库表描述
	 * @return description
	 */
	public String description();
}
