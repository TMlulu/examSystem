package bean;

public class UserInfo {
    private String telephone;
    private String password;
    private String password1;

    public UserInfo(){}
    public UserInfo(String telephone, String password, String password1){
        this.telephone = telephone;
        this.password = password;
        this.password1 = password1;

    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTelephone(String username) {
        this.telephone = username;
    }

    public String getPassword() {
        return password;
    }

    public String getTelephone() {
        System.err.println(telephone);
        return telephone;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }

    @Override
    public String toString() {
        return  telephone+","+password;
    }
}
