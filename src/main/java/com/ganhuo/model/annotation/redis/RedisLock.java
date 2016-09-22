package com.ganhuo.model.annotation.redis;

import java.lang.annotation.*;

/**
 * @author baopeizhou
 * @Date 2016年5月6日
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface RedisLock {

    String value();

    /**
     * 锁持续时间，单位：毫秒
     * */
    long keepTime() default 60000;

    /**
     * 获取锁失败时后续逻辑，默认放弃
     * */
    LockFailAction action() default LockFailAction.GIVEUP;

    public enum LockFailAction {
        /**
         * 放弃
         */
        GIVEUP,
        /**
         * 继续
         */
        CONTINUE;
    }

    /**
     * 睡眠时间,设置GIVEUP忽略此项
     * @return
     */
    long sleepTime() default 1000;
}
