package com.ganhuo.service;

import com.ganhuo.mapper.ModuleMapper;
import com.ganhuo.model.domain.Module;
import com.ganhuo.service.client.ModuleService;
import com.ganhuo.service.client.SpiderService;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Service("spiderService")
public class SpiderServiceImpl implements SpiderService {




    @Override
    public void getHtmlContent() {
        try {
            Document doc = Jsoup.connect("http://www.lz13.cn/lizhi/lizhiwenzhang.html")
                    .data("query", "Java")   // 请求参数
                    .userAgent("I ’ m jsoup") // 设置 User-Agent
                    .cookie("auth", "token") // 设置 cookie
                    .timeout(3000)           // 设置连接超时时间
                    .post();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
