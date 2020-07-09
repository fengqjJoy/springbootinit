package com.controller.worm;

import com.alibaba.fastjson.JSONObject;
import com.dao.GupiaoMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.List;

/**
 * @Project: internetworm
 * @Package: com.worm
 * @Author: 冯前进
 * @Date: 2020-07-09 14:59
 * @Description: TODO
 **/
@RestController
public class GetGupiao {
    @Resource
    GupiaoMapper gupiaoMapper;

    @RequestMapping("/access/getallgupiao.do")
    public String add() throws IOException {
        String url = "http://data.eastmoney.com/DataCenter_V3/yjfp/getlist.ashx?js=var%20gyeyFTLe&pagesize=548&page=1" +
                "&sr=-1&sortType=YAGGR&mtk=" + URLEncoder.encode("全部股票", "GBK") +
//                "&filter=(YCQTS%3C0)(ReportingPeriod=^2019-12-31^)" +
                "&filter=" + URLEncoder.encode("(YCQTS<0)(ReportingPeriod=^2019-12-31^)", "GBK") +
                "&rt=53142565";
        String html = HttpClientUtils.doGet(url);
        String Json = html.substring(13);
        JSONObject jsonObject = JSONObject.parseObject(Json);
        String data = jsonObject.get("data").toString();
        List<Gu> guList = JSONObject.parseArray(data, Gu.class);
        guList.forEach(gu -> {
            if (gu.getGqdjr().length() > 9) {
                gu.setGqdjr(gu.getGqdjr().substring(0, 10));
            } else {
                gu.setGqdjr("");
            }
            try {
                String price=getprice(gu.getCode());
                gu.setNowprice(price);
                if(StringUtils.isNotEmpty(price)){
                    gu.setRate(getPercent(gu.getXjfh(),price));
                }
                gupiaoMapper.insert(gu);
            } catch (IOException e) {
                e.printStackTrace();
            }

        });
        System.out.println(guList);
        return "success";
    }

//    public static void main(String[] args) throws IOException {
//        System.out.println(getprice("600703"));
//    }

    public static String getprice(String code) throws IOException {
        String url = "http://hq.sinajs.cn/list=sh" + code;
        String res = HttpClientUtils.doGet(url);

        String[] re = res.split(",");
        if (re.length < 4) {
            System.out.println(code);
            return "";
        }
        return re[3];
    }

    private static String getPercent(String a, String b) {
        if("-".equals(a)){
            return "";
        }
        DecimalFormat df = new DecimalFormat("#.00");
        String res= df.format((Double.parseDouble(a) / Double.parseDouble(b)) * 10);
        if(res.startsWith(".")){
            return "0"+res;
        }
        return res;
    }
}
