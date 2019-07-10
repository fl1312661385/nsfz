package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092800612692";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCFu/jk4REc6cPMx2hqtmey/NrkAsblxJgjXxKKc6R2g7kEimACxeOKSaVxpokcqtw6djQXqMOa4TepiisKYm4bRYjXWXcaadE4vGYfsgUG5nafEUK7c9XrNc9r+CAYECdNhTA5hoEhU6fBLJEazQswuRm5WT6WRNg0rUGL9hhvyTYmjTG4UYEhmJH1KqeYtbTtXIl1O0kA275f89wPS0zn0g3ZAvQ+I0sYQv5dYsDxQYJW177uY41Y+j6gKXWTXtLUVGBlNGJQ/zGgZaVKZsNGPtYh0PVMhPhoeNGkHVeGlvLOvYEhA34TqLhyuP5tv3qSrB0b73Crg07Uds4SgkmFAgMBAAECggEAOUVwp4QDMiCiK3ZSLzECY9KJYxAVYZy5kpxKcmRn0CFFAL7JsyZP9Y7ofS1WlqJNQfQRBvjNG+zLS53SJNZWVPOIUMENkpAye1ujWHuCT5wuvJxFucU3nU0kERbnl6aDTl11c404i68prj6JvbKF0k3SyF+BwBSnipeP9IJloKkqPgSbsIIytGBWJg1ehfwLJOJg92gcfN2IQ23XN8fl2S4PgMYDzTWWpIivC+JJUHsuQ542daF/FDlaov/OzoOJadEOGVhPFRIEKat0+2WVwUOwekIrv78+SwGvfVpbmSlT3L7Rj30y3HRUFRfHIhC8KegzwOo9Td+RC5Ktkk7bgQKBgQC6PFmmTan6pxA14tDtd/B/kOj/p/cULYLu42hztPD87+a1ciEKjsIwayxLBGXXPUk9qoHWUV17uXh4p7QlTXHk55QLC1Km1ZB5a5ZYDN5ETIJ0k6KoopGexif3q/8v7Hht5oJ3lzB1TYWGudVOjauGGBq6PH7+MaPAGBpBvW3xsQKBgQC31NTUwqiEgNEgA1wAjP/LMsVlC3Itz7wTuUYK/Xy4tVDlcmqQUjN7A8jA14/dgocME7ZyyP0yR7NnZaezo2Xlwgp0TiqNqYDqHwgMgebWOQG0q2+uaLlNLAe/lK2bUef20GGU0ZWSRcCtvdDzHo95bQKfMPdLmY2MVem31QxWFQKBgFi5I6Sc31vwd0KUuiBHwaWkbbxOUuGkBPq2EC7/hseZqvnKU39qH41doY5jm/j804WzU4O846Jr677fdm1HBfmdceQJEuk0WU3fOZLdHo6/PG85XoakXGed07CkmkBEkeMZrBI5TvazZeeXZM21pH+PwDv1UjLbhz2evfOPwW8hAoGBAJe6ZuAkuoqC+BiALVOXDRleEmbQB7GgIA/3f8RabLLXlKmMwj/UWQFTokLoqKmfrm9dZd1f3vu9CmpxEPXIC7aTbaWJTr4WBX03l6EbJrfx3WKNjWRas3bqvIp34MKt29NvMttuERHl2J6OaQQBWVJTkzJpa/NODfKihoFgqwnxAoGAIY4bpqEqHMhzar9qS8+k58sn6hIbfDRHPrci/EQB3OjUcgdizkHsOAG2hnqDhggImL/EtHHQEwexBSalGIRf8NqO9tzgM3ipV1mGPbExCnAC9NzvH13u4Ly6Zc4jwI92dcJdFa4b86/nxJ/nUDL5/IigljX8mZgc5S5lBGmwOj0=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuQ8uhKkyggCQOSBrfUWkmzo+KYfis2kqmTViVhdxAOnh0OKvV0rFBmfff2zifu7WIuilaphH7/fOWzk7v5ylWYPFqwV/f/lQsilnaHRQUHAH48Wm8qBemjnuzp3tI63gkXdE5opjCXfj7mbfotZCJiwZW06fnHHw1FaxgD+jQOS+S2j0LcrLb9TZPwIT+Y16ozxShCOj5ZH8F9ELhf/w8UKCX7BeJBJMcgWDb2QKAHn3JAKrVEYnoA6sNbUicUbGbNW3jSh6lH4WcTO6LPIEka9wgnnwD1LEA54JXc2uSMgvtgLJ+0DwUib8i6qc3eKhQ+bRsy9/BmTG7d7LghmC/QIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//	public static String return_url = "http://localhost:8080/nsfz/paysuccess.jsp";
	public static String return_url = "http://localhost:8080/nsfz/paysuccess.jsp";
										
	
	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

