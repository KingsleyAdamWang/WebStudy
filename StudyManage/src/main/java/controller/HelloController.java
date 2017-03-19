package controller;

import bean.Message;
import com.sun.jmx.snmp.internal.SnmpSubSystem;
import contant.State;
import dao.TestDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.TestService;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/2/14 0014.
 */
@Controller

public class HelloController {
    @Resource
    TestService testService;
    @RequestMapping(method = RequestMethod.GET,value = "/hello")
    public String printHello(ModelMap model) {
        model.addAttribute("hello", "Spring MVC Hello World");
        model.addAttribute("title", "title");
        return "hello";
    }


    @RequestMapping(method = RequestMethod.POST,value = "/test")
    @ResponseBody
    public Message getAJAXdata(String username){
        System.out.println("username"+username);
        testService.test();
        return new Message(State.SUCCESS,"成功");
    }
    @RequestMapping(method = RequestMethod.POST,value = "/testform")
    @ResponseBody
    public Message getdata(String username,String password){
        System.out.println("username"+username+","+"password"+password);
        return new Message(State.SUCCESS,"成功");
    }

//    @RequestMapping(method = RequestMethod.POST,value = "/test")
//    @ResponseBody
//    public Message getdata(){
//        dao.test();
////        System.out.println("username"+username+","+"password"+password);
//        return new Message(State.SUCCESS,"成功");
//    }
}
