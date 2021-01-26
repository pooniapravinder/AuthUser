<%-- 
    Document   : login
    Created on : Jan 12, 2021, 12:53:08 PM
    Author     : Pravinder Poonia
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%><%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="/rele/css/util.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/main.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
        <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js">
        </script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    </head>
    <body>
        <div class="container-login100" style="background-image: url('/rele/img/bg.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-50 p-b-30">
                <form:form name="loginuser" modelAttribute="loginuser" method="post" action="" class="login100-form validate-form">
                    <div class="row h-100 justify-content-center align-items-center">
                        <img src="/rele/img/logo.png" width="90" height="90" class="rounded m-4">
                        <h4>LOGIN TO <small>YOUR ACCOUNT</small></h4>
                        <p>Get access to all kinds of weird stuff.</p>
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
                    <div class="row h-100 justify-content-center align-items-center  m-b-10">
                        <form:errors path="Email" class="login-errors" style="color:#ff0000; font-size:12px;"/>
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
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">Login</button>
                    </div>
                    <div class="text-center p-3">
                        <a href="/signup/" class="txt2 hov1">Sign Up</a>
                    </div>
                </form:form>
            </div>
        </div>
    </body>
    <script>
        const Mdc_textField = mdc.textField;
                const email = new Mdc_textField.MDCTextField(document.querySelector('.email-field'));
                const password = new Mdc_textField.MDCTextField(document.querySelector('.password-field'));
    </script>
</html>