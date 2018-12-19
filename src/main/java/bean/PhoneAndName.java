package bean;

public class PhoneAndName {
    private String  telephone;
    private String name;
    public PhoneAndName(){}
    public PhoneAndName(String telephone, String name){
        this.telephone = telephone;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
}
