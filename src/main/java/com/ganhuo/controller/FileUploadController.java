package com.ganhuo.controller;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.websocket.server.PathParam;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.UUID;

/**
 * Created by sunzhiqiang on 2016/8/25.
 */

@Controller
@RequestMapping("/upload")
public class FileUploadController {

    @RequestMapping("/test")
    public void test(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("textml;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        Part part = request.getPart("myFileName");// myFileName是文件域的name属性值
        // 文件类型限制
        String[] allowedType = { "image/bmp", "image/gif", "image/jpeg", "image/png" };
        boolean allowed = Arrays.asList(allowedType).contains(part.getContentType());
        if (!allowed) {
            response.getWriter().write("error|不支持的类型");
            return;
        }
        // 图片大小限制
        if (part.getSize() > 5 * 1024 * 1024) {
            response.getWriter().write("error|图片大小不能超过5M");
            return;
        }
        // 包含原始文件名的字符串
        String fi = part.getHeader("content-disposition");
        // 提取文件拓展名
        String fileNameExtension = fi.substring(fi.indexOf("."), fi.length() - 1);
        // 生成实际存储的真实文件名
        String realName = UUID.randomUUID().toString() + fileNameExtension;

        // 图片存放的真实路径
        String realPath = request.getServletContext().getRealPath("/image") + "/" + realName;

        // 将文件写入指定路径下
        part.write(realPath);

        // 返回图片的URL地址
        response.getWriter().write(request.getContextPath() + "/image/" + realName);
}

    @RequestMapping("/file")
    @ResponseBody
    public String fileUpload(@RequestParam("file") MultipartFile file,HttpServletResponse response){
        String name = "";
        if (!file.isEmpty()) {

            String[] allowedType = { "image/bmp", "image/gif", "image/jpeg", "image/png" };
            boolean allowed = Arrays.asList(allowedType).contains(file.getContentType());
            if (!allowed) {
                return "图片格式不对";
            }
            // 图片大小限制
            if (file.getSize() > 3 * 1024 * 1024) {
                return "图片太大";
            }
            name = UUID.randomUUID().toString();
            // 提取文件拓展名
            String fi = file.getOriginalFilename();
            String fileNameExtension = fi.substring(fi.indexOf("."), fi.length());
            SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd");
            String dataStr = format.format(new Date());
            String fileName = "static/image/"+name+dataStr+fileNameExtension;
            System.out.println(fileName);
            try {
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(new File(fileName)));
                stream.write(bytes);
                stream.close();
                return "You successfully uploaded " + name + " into " + name + "-uploaded !";
            } catch (Exception e) {
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + name + " because the file was empty.";
        }
    }






}
