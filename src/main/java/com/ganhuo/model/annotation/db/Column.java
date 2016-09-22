package com.ganhuo.model.annotation.db;

import java.lang.annotation.*;

/**
 * 字段信息注解
 * @author wuxu
 * */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface Column {

	/**
	 * 字段名
	 * @return name
	 */
	public String name();
	
	/**
	 * 字段描述
	 * @return description
	 */
	public String description();
	
	/**
	 * 是否为必填字段
	 * @return requeired
	 */
	public boolean required() default false;
	
}
