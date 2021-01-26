package pages.controller.register;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import hibernate.mapping.Accounts;
import hibernate.query.RegistrationQuery;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RegisterHandler {

    @Autowired
    SignupValidation validation;

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        webDataBinder.setValidator(validation);
    }

    @RequestMapping(value = "/signup/", method = RequestMethod.GET)
    public String RegisterView(Addaccount setModel, Model model) {
        model.addAttribute("addaccount", setModel);
        return "signup";
    }

    @RequestMapping(value = "/signup/", method = RequestMethod.POST)
    public String RegisterSubmit(@Valid Addaccount input, BindingResult results, Model model, HttpServletRequest request, HttpServletResponse response) {
        if (results.hasErrors()) {
            model.addAttribute("addaccount", input);
            return "signup";
        }
        RegistrationQuery registrationQuery = new RegistrationQuery();
        Accounts saveAccount = new Accounts(input.getName(), input.getEmail(), input.getPassword());
        return "redirect:../success/?referrer=sign_up&user=" + registrationQuery.addAccount(saveAccount);
    }

}
