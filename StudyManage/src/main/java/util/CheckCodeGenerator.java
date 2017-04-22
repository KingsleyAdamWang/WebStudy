package util;

import java.util.HashMap;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public class CheckCodeGenerator {
    private static HashMap<String,String> checkCodeMapping ;


    static {
        checkCodeMapping = new HashMap<String, String>();
    }
    public static String getCheckCode(String address){
        int random = (int)(Math.random()*999999);
        String checkCode = String.valueOf(random);
        checkCodeMapping.put(address,checkCode);
        System.err.println("address:"+address+";checkCode:"+checkCode);
        return checkCode;
    }

    public static HashMap<String,String> getCheckCodeMapping(){
        return checkCodeMapping;
    }
}
