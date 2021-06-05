package com.shetuan.servelt;

import org.apache.commons.io.FileUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

public class ReadImageServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("image/*");
        String imgName = request.getParameter("imgName");
        String imgPath="E:\\javawebTest\\community-management-system\\src\\main\\webapp\\ueditor\\jsp\\upload\\image\\"+imgName;
        File image = new File(imgPath);
        if (!image.exists()) {
            return;
        }
        //FileUtils.readFileToByteArray(File file)把一个文件转换成字节数组返回
        response.getOutputStream().write(FileUtils.readFileToByteArray(image));
        response.getOutputStream().flush();
        response.getOutputStream().close();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}


