<%-- 
    Document   : signup
    Created on : Jan 12, 2021, 12:53:52 PM
    Author     : Pravinder Poonia
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%><%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Signup</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="/rele/css/util.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/main.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
        <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    </head>
    <body>
        <div class="container-login100" style="background-image: url('/rele/img/bg.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-50 p-b-30">
                <form:form name="addaccount" modelAttribute="addaccount" method="post" action="" class="login100-form validate-form" onsubmit="event.preventDefault(); validate();">
                    <div class="row h-100 justify-content-center align-items-center">
                        <img src="/rele/img/logo.png" width="90" height="90" class="rounded m-4">
                        <h4>REGISTER TO <small>YOUR ACCOUNT</small></h4>
                        <p>Get started for authentication details.</p>
                    </div>
                    <label class="name-field mdc-text-field mdc-text-field--outlined" style="width:100%;">
                        <span class="mdc-notched-outline">
                            <span class="mdc-notched-outline__leading"></span>
                            <span class="mdc-notched-outline__notch">
                                <span class="mdc-floating-label" id="my-label-id-name">Name</span>
                            </span>
                            <span class="mdc-notched-outline__trailing"></span>
                        </span>
                        <form:input path="name" id="name" class="mdc-text-field__input" autocorrect="off" autocomplete="off" spellcheck="false" placeholder="Name" aria-labelledby="my-label-id-name" required="true" minlength="3" pattern="^[a-zA-Z\\s]+"/>
                    </label>
                    <div class="row h-100 justify-content-center align-items-center p-l-15 p-r-15 m-b-10">
                        <form:errors path="name" class="login-errors" style="color:#ff0000; font-size:12px;"/>
                    </div>
                    <label class="email-field mdc-text-field mdc-text-field--outlined" style="width:100%;">
                        <span class="mdc-notched-outline">
                            <span class="mdc-notched-outline__leading"></span>
                            <span class="mdc-notched-outline__notch">
                                <span class="mdc-floating-label" id="my-label-id-email">Email</span>
                            </span>
                            <span class="mdc-notched-outline__trailing"></span>
                        </span>
                        <form:input path="email" id="email" class="mdc-text-field__input" autocorrect="off" autocomplete="off" spellcheck="false" placeholder="Email" aria-labelledby="my-label-id-email" required="true" minlength="8" pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,4})$"/>
                    </label>
                    <div class="row h-100 justify-content-center align-items-center p-l-15 p-r-15 m-b-10">
                        <form:errors path="email" class="login-errors" style="color:#ff0000; font-size:12px;"/>
                    </div>
                    <label class="password-field mdc-text-field mdc-text-field--outlined" style="width:100%;">
                        <span class="mdc-notched-outline">
                            <span class="mdc-notched-outline__leading"></span>
                            <span class="mdc-notched-outline__notch">
                                <span class="mdc-floating-label" id="my-label-id-password">Password</span>
                            </span>
                            <span class="mdc-notched-outline__trailing"></span>
                        </span>
                        <form:password path="password" id="password" class="mdc-text-field__input" autocorrect="off" autocomplete="off" spellcheck="false" placeholder="Password" aria-labelledby="my-label-id-password" required="true" minlength="8" maxlength="16"/>
                    </label>
                    <div class="row h-100 justify-content-center align-items-center p-l-15 p-r-15 m-b-10">
                        <form:errors path="password" class="login-errors" style="color:#ff0000; font-size:12px;"/>
                    </div>
                    <label class="conf-password-field mdc-text-field mdc-text-field--outlined" style="width:100%;">
                        <span class="mdc-notched-outline">
                            <span class="mdc-notched-outline__leading"></span>
                            <span class="mdc-notched-outline__notch">
                                <span class="mdc-floating-label" id="my-label-id-conf-password">Confirm Password</span>
                            </span>
                            <span class="mdc-notched-outline__trailing"></span>
                        </span>
                        <form:password path="confPassword" id="confPassword" class="mdc-text-field__input" autocorrect="off" autocomplete="off" spellcheck="false" placeholder="Confirm Password" aria-labelledby="my-label-id-conf-password" required="true" minlength="8" maxlength="16"/>
                    </label>
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">Sign Up</button>
                    </div>
                    <div class="text-center p-3">
                        <a href="/login/" class="txt2 hov1">
                            Already have an account?
                        </a>
                    </div>
                </form:form>
            </div>
        </div>
    </body>
    <script>
        const Mdc_textField = mdc.textField;
                const name = new Mdc_textField.MDCTextField(document.querySelector('.name-field'));
                const email = new Mdc_textField.MDCTextField(document.querySelector('.email-field'));
                const password = new Mdc_textField.MDCTextField(document.querySelector('.password-field'));
                const confPassword = new Mdc_textField.MDCTextField(document.querySelector('.conf-password-field'));
                function validate() {
                    if (name.foundation.isValid() && email.foundation.isValid() && password.foundation.isValid() && confPassword.foundation.isValid() && password.foundation.getValue() === (confPassword.foundation.getValue())) {
                        alert("Success Validation");
                        document.forms['addaccount'].submit();
                    } else {
                        alert("Validation Failed");
                    }
                }
    </script>
</html>