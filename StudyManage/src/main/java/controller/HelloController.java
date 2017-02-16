package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by mengf on 2017/2/14 0014.
 */
@Controller
@RequestMapping(value = "/hello")
public class HelloController {

    @RequestMapping(method = RequestMethod.GET)
    public String printHello(ModelMap model) {
        model.addAttribute("hello", "Spring MVC Hello World");
        model.addAttribute("title", "title");
        return "hello";
    }
}
