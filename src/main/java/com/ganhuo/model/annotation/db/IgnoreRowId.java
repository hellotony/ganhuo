package com.ganhuo.model.annotation.db;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 对于多个参数的update方法，如果参数中存在Long类型的参数，但是并没有添加@RowId注解
 * 为了避免启动时抛出异常，则可以在方法上标记该注解（前提是你要确认不是忽略了添加@RowId注解，而是该方法内部有可以记录日志的update方法或者手动记录日志）
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface IgnoreRowId {

}
