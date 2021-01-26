package pages.controller.login;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginHandler {

    @Autowired
    LoginValidation validation;

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        webDataBinder.setValidator(validation);
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String Redirect() {
        return "redirect:/login/";
    }

    @RequestMapping(value = "/login/", method = RequestMethod.GET)
    public String LoginCheckView(Loginuser setModel, Model model) {
        model.addAttribute("loginuser", setModel);
        return "login";
    }

    @RequestMapping(value = "/login/", method = RequestMethod.POST)
    public String LoginCheckSubmit(@Valid Loginuser input, BindingResult results, Model model) {
        if (!results.hasErrors()) {
            return "redirect:../success/?user=" + input.getId();
        }
        model.addAttribute("loginuser", input);
        return "login";
    }

}
