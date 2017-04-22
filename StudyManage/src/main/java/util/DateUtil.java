package util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by mengf on 2017/3/20 0020.
 */
public class DateUtil {
    private static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    public static Date getDate(String format){
        try {
            return dateFormat.parse(format);
        } catch (ParseException e) {
            e.printStackTrace();
            return new Date();
        }
    }



    public static String getDateString(Date date){
        if (date==null)
            return dateFormat.format(new Date());
        return dateFormat.format(date);
    }
}
