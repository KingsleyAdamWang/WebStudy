package controller;

import bean.Message;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.ManagerService;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/20 0020.
 */
@Controller
public class ManagerController {
    @Resource
    private ManagerService managerService;

    @RequestMapping("/sendCheckCode")
    @ResponseBody
    public Message sendCheckCode(String mailAddress){
        return managerService.sendCheckCode(mailAddress);
    }

    @RequestMapping("/logout")
    @ResponseBody
    public Message logout(){
        return managerService.logout();
    }
}
