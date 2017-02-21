package intercepter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by mengf on 2017/2/20 0020.
 */


public class IPIntercepter implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String clientIP = httpServletRequest.getRemoteAddr();
        System.out.println(clientIP);
        if (clientIP.equals("127.0.0.1")){
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/jsp/ipError.jsp");
            return false;
        }else {
            return true;
        }
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
