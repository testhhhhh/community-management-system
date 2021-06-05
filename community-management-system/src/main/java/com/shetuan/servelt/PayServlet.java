package com.shetuan.servelt;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.shetuan.bean.Cost;
import com.shetuan.bean.Notice;
import com.shetuan.dao.CostDao;
import com.shetuan.dao.MemberDao;
import com.shetuan.dao.NoticeDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;
import java.util.UUID;

public class PayServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final String APP_ID = "2021000117636004";
    private final String APP_PRIVATE_KEY = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCHcRUZu4uuFDkoWOoOFh+jovtJlXWGbkrz5bY/ae8F0IP8Mq4FH4WTDPmmSaELqHPr/+/PjwpUZ83guJ0eHZS1EYfuclu7miZz1s8hkSUt9kApq204iYcefgF7cqqq83kM/CYnwA0/tZDafJ7uFOWujxo1q0idXEjDyM9g6TJ8+ukdPaxMzK17SHDaFKcj9HpvHxLoMge559hYptYMpjJyhClV/025ZsFfswtyUWCyUpGebLegNlYn9chRT5sag9sV91Je+YaxRtsl0cJ/gcfPjnCGA9pENLmJV/PhNNGPLutW5utDeD7JVc9oC+yE32AA50bpSm3+B/8pAiFZyaKrAgMBAAECggEAKaL+3JlGGG7JH3kuAsSUV2a8H2Pd7EStsArXGumC/GOcn4Qo8RQ+qPUdLhyGcKIJeOyGGWWcxFPg+4tlaaOoWn2YLxpizupVldjcdjI7nsSL9wNnITFOI3aTGBMpGkKc3PwK8r9ck1BKxo/2/7PW4/HEGemc+hsrl1x9PAqUZcz6oh+jyYCIHGoER9HMzpJ0tiTMQG6OC3vGsCG/uXRIGBUW900zUbBuPl24Vk23YHB8ubW2mPqX3scwkCtqqyslYSIPyw5OEcsXNr+3cR2F9AjcyV6yX3ggf42M1UIZqFSUjMlILsp/zlMq94JPFhsMJuD3/n9+9+Lqq0myPlWdgQKBgQDur/bXzJoYpre9vlJ9JMN6o2Cy1ag2HufW7teJpDaPhOJphlM8tqGSDKhWPlbhrA9+8FxhuScb/J/3X/ona23NhrUBU4cRMWGj+XlwES3i7tpgw7Yyu513VSCvNMcyDZxVg30zv6UPVoKEjzQvBcuTGSRW/uhplDbhg/LmafNA6wKBgQCRRAPNyjWiyGqFKdYa/5G7ImvxR9US7f04eOMPHxSs8vqeYArgEP3794RAEsADAYlwp858a5MCZTAI/KsYsnstieDons3rZydQsKwoYw6xaK3ZrT4KkRXRG0WvcxjLem2v0aLb3hwDFE0enpRWOXtHnSwSwErY4CrrRe7l2mC1QQKBgA8TB+jrIBRMezA9k+IZb0sQhGvm+H+qhgPaA7zKpTN9NftqI1mjQyMBL6R6vWv1POlMbtkxI1ouI0AxTJAuxbmEN2xFBTO9xafgep3sR9ScNyiDU79yf+hodO77y1TK7UOtUTvyb48/bHDIxoftusSogtYHtU/tr2Wgurd4m4dPAoGAEtYQ8DRSNCNsvIuqOaH+EZfrC0RXOrclaJc0SherpKl1Geg2QMuzQ2LbATvtLfabDcKUocmJLHxWeDPbM76g/kysnz1IUkfz7yCZkjsWAqciM+Gk89XQUGcK6C8yfeAILQ4v4faxBy0wutGxRmT5uVWGC4BntCuNJSjSS3e/poECgYBIzqeYgkrnNwccbAm5bacr1kt8wd1Yd2istS0pqoieE7sK/SoEDTtM9aXcl1aXBr9BQp+t9PrUZdkwIJ+O1vXb5jqRX4Woq4jbR555v7cHOaDWKNSrtok1/9X941fLHL+KqqWfKJ8+9xDUsrM2kOrfxMzLdVKipLCm9XDzV2XgqQ==";
    private final String CHARSET = "UTF-8";
    private final String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhwzSVIkbfO+Wr4v1PQPcFiOxkKS+CWOv2uFU0WG1BPft+X8qytvMwxior/3pxpZLqXX4FT0tl/68nwJtcaqFAQgEeIb/MngzopafxjbsyuYNLItRVdL2xNEODA1iLIPIjDfb+6FuFEdRt11MmYf9Whnivi0GX0772aMrKOeYNrI4LjRECUyj/8MiMAUGsooUyjGWcDJv4StZOvvtZzBVSUytZj0FOONEQ47kV4On9ljagcj0LgAI0eGVZ/yefTB0WzPJInLcrIsGmQh2hMNf06VFcRL3sBpUmzxC/fQODQajR7jbie0I9xb1kL3J6woKBBM4CkpdlPYR64qu/3DjuQIDAQAB";
    //这是沙箱接口路径,正式路径为https://openapi.alipay.com/gateway.do
    private final String GATEWAY_URL ="https://openapi.alipaydev.com/gateway.do";
    private final String FORMAT = "JSON";
    //签名方式
    private final String SIGN_TYPE = "RSA2";
    //支付宝异步通知路径,付款完毕后会异步调用本项目的方法,必须为公网地址
    private final String NOTIFY_URL = "http://127.0.0.1/notifyUrl";
    //支付宝同步通知路径,也就是当付款完毕后跳转本项目的页面,可以不是公网地址
    private final String RETURN_URL = "http://localhost:8080/returnUrl";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String aid=request.getParameter("aid");
        String loginname=request.getParameter("loginname");
        request.setAttribute("aid",aid);
        request.setAttribute("loginname",loginname);
        Cost cost = new Cost();
        cost.setLoginName(loginname);
        cost.setActivityId(Integer.parseInt(aid));
        cost.setMoney(12);
        CostDao costDao = new CostDao();
        costDao.add(cost);
        MemberDao memberDao = new MemberDao();
        memberDao.addpoint(loginname);

        Random r=new Random();
        //实例化客户端,填入所需参数
        AlipayClient alipayClient = new DefaultAlipayClient(GATEWAY_URL, APP_ID, APP_PRIVATE_KEY, FORMAT, CHARSET, ALIPAY_PUBLIC_KEY, SIGN_TYPE);
        AlipayTradePagePayRequest arequest = new AlipayTradePagePayRequest();
        //在公共参数中设置回跳和通知地址
        arequest.setReturnUrl(RETURN_URL);
        arequest.setNotifyUrl(NOTIFY_URL);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        //生成随机Id
        String out_trade_no = UUID.randomUUID().toString();
        //付款金额，必填
        String total_amount =Integer.toString(12);
        //订单名称，必填
//        String subject =request.getParameter("aname")+"活动费用";
        String subject ="aaa";
        //商品描述，可空
        String body = "尊敬的用户欢迎支付"+subject+"的活动费用";
        arequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        String form = "";
        try {
            form = alipayClient.pageExecute(arequest).getBody(); // 调用SDK生成表单
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }

        response.setContentType("text/html;charset=" + CHARSET);
        response.getWriter().write(form);// 直接将完整的表单html输出到页面
        response.getWriter().flush();
        response.getWriter().close();
    }




    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
