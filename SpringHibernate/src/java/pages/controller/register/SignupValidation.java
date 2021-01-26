package pages.controller.register;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import hibernate.query.RegistrationQuery;
import java.util.regex.Pattern;

@Component
public class SignupValidation implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return Addaccount.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        Addaccount userInput = (Addaccount) target;
        String username = userInput.getName();
        Pattern NamePattern = Pattern.compile("^[a-zA-Z\\s]+");
        Pattern EmailPattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,4})$");
        if ((userInput.getName() == null) || (userInput.getName().isEmpty())) {
            errors.rejectValue("name", "user.name.emptyfield");
        } else if (!NamePattern.matcher(userInput.getName()).matches()) {
            errors.rejectValue("name", "user.name.invalid");
        } else if ((username != null) && (username.length() > 40)) {
            errors.rejectValue("name", "user.name.invalid.length");
        }
        if ((userInput.getEmail() == null) || (userInput.getEmail().isEmpty())) {
            errors.rejectValue("email", "user.email.emptyfield");
        } else if (!EmailPattern.matcher(userInput.getEmail()).matches()) {
            errors.rejectValue("email", "user.email.invalid");
        } else if (userInput.getEmail().length() > 50) {
            errors.rejectValue("email", "user.email.invalidlength");
        } else if (new RegistrationQuery().findAccount(userInput.getEmail()) != null) {
            errors.rejectValue("email", "user.account.exists");
        }
        if ((userInput.getPassword() == null) || (userInput.getPassword().isEmpty())) {
            errors.rejectValue("password", "user.password.emptyfield");
        } else if ((userInput.getConfPassword() == null) || (!userInput.getPassword().equals(userInput.getConfPassword()))) {
            errors.rejectValue("password", "user.password.mismatch");
        } else if (userInput.getPassword().length() < 8 || userInput.getPassword().length() > 16) {
            errors.rejectValue("password", "user.password.invalidlength");
        }
    }

}
