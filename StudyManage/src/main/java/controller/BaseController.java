package controller;

import bean.Message;
import contant.Keys;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by mengf on 2017/2/16 0016.
 */

@Controller
public class BaseController {

    /**
     * 用来处理所有的异常信息 若有个别的可以单独拿出来使用
     * @param ex
     * @param request
     * @return
     */
    @ExceptionHandler
    public String handleException(Exception ex, HttpServletRequest request){
        request.setAttribute(Keys.EXCEPTION_MSG,ex.getMessage());
        return "exception";
    }

}
