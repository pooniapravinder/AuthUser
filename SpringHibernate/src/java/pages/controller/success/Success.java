package pages.controller.success;

import hibernate.query.RegistrationQuery;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Success {

    @RequestMapping(value = "/success/", method = RequestMethod.GET)
    public String LoginCheckView(@RequestParam(value = "referrer", required = false) String referrer, @RequestParam(value = "user", required = true) String user, Model model) {
        String userName = new RegistrationQuery().findAccountById(Long.parseLong(user)).getUserName();
        if (referrer != null && referrer.equals("sign_up") && user != null) {
            model.addAttribute("message", "Hey " + userName + "! you are successfully registered.");
        } else {
            model.addAttribute("message", "Welcome again " + userName + "!");
        }
        return "success";
    }
}
