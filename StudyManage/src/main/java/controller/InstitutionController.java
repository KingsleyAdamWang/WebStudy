package controller;

import antlr.debug.MessageAdapter;
import bean.Message;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.InstitutionService;

import javax.annotation.Resource;

/**
 * Created by mengf on 2017/3/6 0006.
 */
@Controller
public class InstitutionController {
    @Resource
    private InstitutionService institutionService;

    @ResponseBody
    @RequestMapping("/institution_register")
    public Message institution_register(String institution_name,String institution_owner, String institution_owner_id,
                                        String institution_email,String check_code,String institution_tel,String institution_password){
        return institutionService.register(institution_name,institution_owner,institution_owner_id,institution_email,check_code,institution_tel,institution_password);
    }

    @ResponseBody
    @RequestMapping(value = "/institution_login",method = RequestMethod.POST)
    public Message login(String username,String password){
        return institutionService.login(username,password);
    }

    @ResponseBody
    @RequestMapping(value = "/institutionCenter",method = RequestMethod.POST)
    public Message institutionCenter(int index){
        return institutionService.institutionCenter(index);
    }

}
