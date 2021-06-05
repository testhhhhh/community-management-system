package com.shetuan.servelt;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class UploadServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String savePath = "E:\\javawebTest\\community-management-system\\src\\main\\webapp\\ueditor\\jsp\\upload\\image";
        File file = new File(savePath);

        // 判断上传文件的保存目录是否存在
        if (!file.exists()) {
            // 创建目录
            file.mkdir();
        }

        try {
            // 使用Apache文件上传组件处理文件上传步骤：
            // 1、创建一个DiskFileItemFactory工厂
            DiskFileItemFactory factory = new DiskFileItemFactory();
            // 2、创建一个文件上传解析器
            ServletFileUpload upload = new ServletFileUpload(factory);
            // 解决上传文件名的中文乱码
            upload.setHeaderEncoding("UTF-8");
            // 3、 检测是否为多媒体上传
            if (!ServletFileUpload.isMultipartContent(request)) {
                // 按照传统方式获取数据
                return;
            }
            // 4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，
            List<FileItem> list = upload.parseRequest(request);
            for (FileItem item : list) {
                String filename = item.getName();
                if (filename == null || filename.trim().equals("")) {
                    continue;
                }

                filename = filename.substring(filename.lastIndexOf("\\") + 1);

                String suffix = filename.substring(filename.lastIndexOf('.'));// 拓展名.jpg
                //新文件名（唯一）
                String newFileName = UUID.randomUUID().toString() + suffix;//image\1478509873038.jpg
                // 创建一个文件输出流

                FileOutputStream out = new FileOutputStream(savePath + "\\" + newFileName);

                // 获取item中的上传文件的输入流
                InputStream in = item.getInputStream();

                // 创建一个缓冲区
                byte buffer[] = new byte[1024];

                // 判断输入流中的数据是否已经读完的标识
                int len = 0;

                while ((len = in.read(buffer)) > 0) {
                    out.write(buffer, 0, len);
                }

                // 返回结果信息(UEditor需要)
                Map<String, String> map = new HashMap<String, String>();
                // 是否上传成功
                map.put("state", "SUCCESS");
                // 现在文件名称
                map.put("title", newFileName);
                // 文件原名称
                map.put("original", filename);
                // 文件类型 后缀名
                map.put("type", suffix);
                // ueditor文件回显的请求地址以及文件名
                map.put("url", "ReadImageServlet?imgName=" + URLEncoder.encode(newFileName, "UTF-8"));

                // 文件大小（字节数）
                map.put("size", item.getSize() + "");

                String json = JSONObject.valueToString(map);
                response.getWriter().print(json);
                // 关闭输入流
                in.close();
                // 关闭输出流
                out.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
