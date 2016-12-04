package com.ganhuo;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by sunzhiqiang on 2016/9/22.
 * @EnableAsync 作用是允许项目中使用注解 @Async（在方法，类上加这个，多线程执行）
 * @EnableAutoConfiguration 自动加载项目中所有的 Bean
 * @SpringBootApplication = (默认属性)@Configuration + @EnableAutoConfiguration + @ComponentScan。
 */
@SpringBootApplication
//@Configuration
@EnableAsync
@MapperScan("com.ganhuo.mapper")
//@EnableAutoConfiguration//启用自动配置
public class Start extends SpringBootServletInitializer {

    private static final Logger logger = LoggerFactory.getLogger(Start.class);

    @Override
        protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Start.class);
    }
    public static void main(String[] args) {
        SpringApplication.run(Start.class, args);
        logger.info(new SimpleDateFormat("[yyyy-MM-dd HH:mm:ss]").format(new Date()) + "Alfa service server started!");
    }
}
