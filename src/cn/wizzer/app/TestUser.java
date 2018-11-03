package cn.wizzer.app;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.junit.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/30.
 */
public class TestUser {
    String sessionId = "";
    String url       = "http://127.0.0.1:8002/";
    String token     = "b1baba458e1d6e3d1087012552617";

    public void login() {
        Map<String, String> params = new HashMap<String, String>();
        params.put("username", "yuzilong");
        params.put("password", "123456");
        params.put("unit_id", "e983ee4c5ea44466a4ef0b07d9a07155");
        String reuslt = post(url + "platform/interface/login", params, "");
        JSONTokener jsonTokener = new JSONTokener(reuslt);
        token = ((JSONObject)jsonTokener.nextValue()).getJSONObject("data").get("token").toString();
    }


    public void teamReg() {
        Map<String, String> params = new HashMap<String, String>();
        params.put("username", "123213");
        params.put("password", "password");
        params.put("email", "email");
        params.put("groupName", "groupName");
        params.put("unitType", "unitType");
        params.put("unitName", "unitName");
        params.put("pochargeName", "pochargeName");
        params.put("pochargePhone", "pochargePhone");
        params.put("pochargeCardId", "pochargeCardId");
        params.put("mobile", "mobile");
        params.put("constractQQ", "constractQQ");

        params.put("token", token);
        String result = post(url + "platform/interface/teamReg", params, token);
    }

    public void saveUserInfo() {
        Map<String, String> params = new HashMap<String, String>();
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");
        params.put("mobile", "13346466464");

        params.put("token", "b1baba458e1d6e3d1087012552617");
        String result = post(url + "platform/interface/customer/getLastInfo", params, token);
    }

    public static String post(String url, Map<String, String> params, String token) {
        HttpClient httpmobile = new DefaultHttpClient();
        HttpPost httppost = new HttpPost(url);
        String strResult = "";
        try {
            List<NameValuePair> nvps = new ArrayList<NameValuePair>();
            for (String key : params.keySet()) {
                nvps.add(new BasicNameValuePair(key, params.get(key)));
            }
            httppost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));


            HttpResponse response = httpmobile.execute(httppost);
            if (response.getStatusLine().getStatusCode() == 200) {
                strResult = EntityUtils.toString(response.getEntity());
                //                strResult = new String(strResult.getBytes("ISO-8859-1"),"utf-8");
                //                System.out.println(conResult);
                //                strResult = conResult;
                System.out.println(strResult);
            } else {
                String err = response.getStatusLine().getStatusCode() + "";
                strResult += "发送失败:" + err;
                System.out.println(strResult);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return strResult;
    }

    @Test
    public void uploadMemberImage() {
        Map<String,String> params = new HashMap<String, String>();
        params.put("type", "1");
        params.put("jsessionid", sessionId);
        params.put("userId", "64");
        uploadImage("http://www.remon.xin:8080/zyy/file/uploadFile","F:/52008885709387086.jpg",params,sessionId);
    }
    public void uploadImage(String url,String filePath,Map<String,String> params,String sessionId) {
        HttpClient httpclient = new DefaultHttpClient();
        // 请求处理页面
        try {
            HttpPost httppost = new HttpPost(url);
            FileBody bin = new FileBody(new File(filePath));
            MultipartEntity reqEntity = new MultipartEntity();
            reqEntity.addPart("Filedata", bin);

            StringBody type = new StringBody("1", ContentType.TEXT_PLAIN);
            StringBody jssessionId = new StringBody(sessionId, ContentType.TEXT_PLAIN);
            StringBody vehicleId = new StringBody("64", ContentType.TEXT_PLAIN);
            for(String key : params.keySet()){
                reqEntity.addPart(key, new StringBody(params.get(key), ContentType.TEXT_PLAIN));
            }

            httppost.setEntity(reqEntity);

            System.out.println("executing request " + httppost.getRequestLine());
            HttpResponse response = httpclient.execute(httppost);

            System.out.println(response.getStatusLine());
            HttpEntity resEntity = response.getEntity();
            if (resEntity != null) {
                System.out.println("Response content length: "+ resEntity.getContentLength());
            }
            //EntityUtils.consume(resEntity);
            String s = EntityUtils.toString(resEntity);
            System.out.println(s);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            httpclient.getConnectionManager().shutdown();
        }
    }
}
