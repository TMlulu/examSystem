package bean;

public class User {

    private String telephone;
    private String password;

public User(){

}
    public User(String telephone, String password) {
        this.telephone = telephone;
        this.password = password;
    }


    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    @Override
    public String toString() {
        return "User{" +
                "telephone='" + telephone + '\'' +
                ", password='" + password + '\'' +
                '}';
    }



}
