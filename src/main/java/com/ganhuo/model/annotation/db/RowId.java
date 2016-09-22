package com.ganhuo.model.annotation.db;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * <p>id参数注解</p>
 * <p>用于标记update方式的service方法中，数据意义是id的参数</p>
 * @author wuxu
 *
 */
@Target(ElementType.PARAMETER)
@Retention(RetentionPolicy.RUNTIME)
public @interface RowId {

}
