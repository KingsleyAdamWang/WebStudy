package util;

import java.text.DecimalFormat;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public class StringUtil {
    private static final String STR_FOTMAT = "0000000";

    /**
     * 默认的7位数会员号，用户号
     * @param id
     * @return
     */
    public static String getId(int id){
        DecimalFormat decimalFormat = new DecimalFormat(STR_FOTMAT);
        String result = decimalFormat.format(id);
        return result;
    }

    public static int getIdInteger(String username) {
        return Integer.parseInt(username);
    }
}
