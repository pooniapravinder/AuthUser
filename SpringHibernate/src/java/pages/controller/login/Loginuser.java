package pages.controller.login;

public class Loginuser {

    private long id;
    private String email;
    private String password;
    private boolean invalidLogin;

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isInvalidLogin() {
        return this.invalidLogin;
    }

    public void setInvalidLogin(boolean invalidLogin) {
        this.invalidLogin = invalidLogin;
    }

}
