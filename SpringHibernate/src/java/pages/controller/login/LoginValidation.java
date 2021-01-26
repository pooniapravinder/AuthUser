package pages.controller.login;

import hibernate.mapping.Accounts;
import hibernate.query.RegistrationQuery;
import java.util.regex.Pattern;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class LoginValidation implements Validator {
    
    @Override
    public boolean supports(Class<?> clazz) {
        return Loginuser.class.isAssignableFrom(clazz);
    }
    
    @Override
    public void validate(Object target, Errors errors) {
        Loginuser userInput = (Loginuser) target;
        Pattern EmailPattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,4})$");
        if ((userInput.getEmail() == null) || (userInput.getEmail().isEmpty())) {
            errors.rejectValue("Email", "login.label.emptyfield");
        } else if (!EmailPattern.matcher(userInput.getEmail()).matches()) {
            errors.rejectValue("Email", "login.label.invalidfield");
        } else {
            RegistrationQuery registrationQuery = new RegistrationQuery();
            Accounts userlogin = registrationQuery.findAccount(userInput.getEmail());
            if (userlogin == null) {
                errors.rejectValue("Email", "login.label.invalidaccount");
            } else {
                boolean isAuthenticated = (userInput.getPassword() != null) && (!userInput.getPassword().isEmpty()) && (userlogin.getPassword().equals(userInput.getPassword()));
                if (!isAuthenticated) {
                    errors.rejectValue("Email", "login.label.invalidpassword");
                } else {
                    userInput.setId(userlogin.getId());
                }
            }
        }
    }
    
}
