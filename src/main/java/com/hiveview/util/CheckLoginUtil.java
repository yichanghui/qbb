package com.hiveview.util;

import org.apache.commons.lang.StringUtils;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

/**
 * Created by hxq on 2017/5/15.
 */
public class CheckLoginUtil {

    /**
     * 需要过滤的 Url前缀
     */
    private static final List<String> filterUrlPrefix = Arrays.asList("/member","/myTest");

    /**
     * 是否需要登录过滤
     * @param url
     * @return
     */
    public static boolean isFilter(String url) {
        return Optional.ofNullable(url).filter(u -> StringUtils.isNotBlank(u)).map(u1 ->{
                    boolean flag = false;
                    String tempUrl = StringUtils.removeStart(u1, "/");
                    tempUrl=  StringUtils.substringBefore(tempUrl, "/");
                    if (filterUrlPrefix.contains(tempUrl)) {
                        flag = true;
                    }
                      return flag;
                }
        ).orElse(false);
    }

    public static void main(String[] args) {
        System.err.println("1=============="+isFilter("/member/asd/dsa.html"));
        System.err.println("2=============="+isFilter("/memberasd/dsa.html"));
        System.err.println("3=============="+isFilter("/member"));
        System.err.println("4=============="+isFilter("/membe"));
        System.err.println("5=============="+isFilter("member"));
        System.err.println("6=============="+isFilter("member/"));
        System.err.println("7=============="+isFilter("/myTest/asd/dsa"));
        System.err.println("8=============="+isFilter("/myTest1"));
    }

}
