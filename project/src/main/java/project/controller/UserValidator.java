package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

import project.domain.User;
import project.service.UserService;

@Component
public class UserValidator implements Validator {
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
        if (user.getEmail().length() < 6 || user.getEmail().length() > 32) {
            errors.rejectValue("email", "Size.userForm.email");
        }
        if (userService.findByEmail(user.getEmail()) != null) {
            errors.rejectValue("email", "Duplicate.userForm.email");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty");
        if (user.getFirstName().length() < 1 || user.getFirstName().length() > 32) {
            errors.rejectValue("firstName", "Size.userForm.firstName");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "NotEmpty");
        if (user.getLastName().length() < 1 || user.getLastName().length() > 32) {
            errors.rejectValue("lastName", "Size.userForm.lastName");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty");
        if (user.getPhone().length() < 10) {
            errors.rejectValue("phone", "Size.userForm.phone");
        }
    }
    
    public void validateParam(MultipartFile img, String fN, String lN, String ph, Errors errors) {
        //User user = (User) o;
        // MultipartFile image = (MultipartFile) img;
        String firstName = fN.toString();
        String lastName = lN.toString();
        String phone = ph.toString();
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "image", "NotEmpty");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty");
        if (firstName.length() < 1 || firstName.length() > 32) {
            errors.rejectValue("firstName", "Size.userForm.firstName");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "NotEmpty");
        if (lastName.length() < 1 || lastName.length() > 32) {
            errors.rejectValue("lastName", "Size.userForm.lastName");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty");
        if (phone.length() < 10) {
            errors.rejectValue("phone", "Size.userForm.phone");
        }
    }
}