package bean;

public class IntimacyBean {

    private String name;
    private String intimacy_rank;
    public IntimacyBean(String name, String intimacy_rank) {
        this.name = name;
        this.intimacy_rank = intimacy_rank;
    }
public IntimacyBean(){}


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntimacy_rank() {
        return intimacy_rank;
    }

    public void setIntimacy_rank(String intimacy_rank) {
        this.intimacy_rank = intimacy_rank;
    }
}
