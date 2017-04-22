package controller;

import bean.Message;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import service.UserService;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/6 0006.
 */

@Controller
public class UserController {
    @Resource
    private UserService userService;

    @ResponseBody
    @RequestMapping(value = "/user_register",method = RequestMethod.POST)
    public Message register(String email,String checkCode,String tel,String password){
        return userService.register(email,checkCode,tel,password);
    }


    @ResponseBody
    @RequestMapping(value = "/user_login",method = RequestMethod.POST)
    public Message login(String username,String password){
        return userService.login(username,password);
    }

    @ResponseBody
    @RequestMapping(value = "/userCenter",method = RequestMethod.POST)
    public Message userCenter(int index){
        return userService.userCenter(index);
    }

    @ResponseBody
    @RequestMapping(value = "/modifyUserHead")
    public Message updateHead(){
        return null;
    }

    @ResponseBody
    @RequestMapping(value = "/updateUserBasic",method = RequestMethod.POST)
    public Message updateUserBasic(MultipartFile headImg,String name,String birth,String comment){
        return userService.updateBasic(headImg,name,birth,comment);
    }

    @ResponseBody
    @RequestMapping(value = "/updateUserSafe")
    public Message updateUserSafe(String bankCard, String email, String checkCode){
        return userService.updateSafe(bankCard,email,checkCode);
    }
}
