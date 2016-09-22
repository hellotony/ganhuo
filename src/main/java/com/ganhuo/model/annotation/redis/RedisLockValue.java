package com.ganhuo.model.annotation.redis;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


/**
 * redis锁，参数注解
 * 加了该注解的参数，会共同作为lock的value使用
 * */
@Target(ElementType.PARAMETER)
@Retention(RetentionPolicy.RUNTIME)
public @interface RedisLockValue {

}
