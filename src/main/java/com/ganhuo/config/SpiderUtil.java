package com.ganhuo.config;

import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.ArticleDesc;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import sun.rmi.transport.Connection;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/11/15.
 */
public class SpiderUtil {

    public static void main(String[] args) {
    }

    public static String doGet(String urlStr)  {
        URL url;
        String html = "";
        try {
            url = new URL(urlStr);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            connection.setConnectTimeout(5000);
            connection.setDoInput(true);
            connection.setDoOutput(true);
            if (connection.getResponseCode() == 200) {
                InputStream in = connection.getInputStream();
                html = inToStringByByte(in);
            } else {

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return html;
    }

    public static String inToStringByByte(InputStream in) throws Exception {
        ByteArrayOutputStream outStr = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = 0;
        StringBuilder content = new StringBuilder();
        while ((len = in.read(buffer)) != -1) {
            content.append(new String(buffer, 0, len, "UTF-8"));
        }
        outStr.close();
        return content.toString();
    }

    public static List<ArticleDesc> lzys(){
        String html = doGet("http://www.lz13.cn/lizhi/lizhiwenzhang.html");
        Document document = Jsoup.parse(html);
        Elements href = document.getElementsByTag("a");
        List<ArticleDesc> sprider1 = new ArrayList<>();
        List<ArticleDesc> sprider2 = new ArrayList<>();
        for(Element element:href){
            String url = element.attr("href");
            String title = element.text();
            if(url.contains("/lizhiwenzhang/")){
                ArticleDesc articleDesc = new ArticleDesc();
                articleDesc.setTitle(title);
                articleDesc.setImgUrl(url);
                sprider1.add(articleDesc);
            }
            if(url.contains("/lizhiwenzhang-")){
                ArticleDesc articleDesc = new ArticleDesc();
                articleDesc.setImgUrl(url);
                articleDesc.setTitle(title);
                sprider2.add(articleDesc);
            }
        }

        for(ArticleDesc ar:sprider2){
            String html1 = doGet("http://www.lz13.cn/lizhi/lizhiwenzhang.html");
            Document document1 = Jsoup.parse(html1);
            Elements href1 = document1.getElementsByTag("a");

            for(Element element:href1){
                String url = element.attr("href");
                String title = element.text();

                if(url.contains("/lizhiwenzhang/")){
                    ArticleDesc articleDesc = new ArticleDesc();

                    articleDesc.setTitle(title);
                    articleDesc.setImgUrl(url);
                    sprider1.add(articleDesc);
                }
            }
        }
        return sprider1;
    }

    public static String getTextByUrl(String url){

        String html = doGet(url);
        Document document = Jsoup.parse(html);

        Elements elements = document.getElementsByClass("PostContent");
        String str = null;
        for(Element e:elements){
            Element element = e.getElementsByClass("left_box5").get(0).nextElementSibling();
            StringBuilder sb = new StringBuilder("");
            while(!element.toString().contains("ul")){
                sb.append(element.nextElementSibling().toString());
                element = element.nextElementSibling().nextElementSibling();
            }
            str = sb.toString();
        }
        return str;
    }

}
