package bean;

public class ProgramStageSureRate {
    public ProgramStageSureRate(){}
    public ProgramStageSureRate(String stunum, double surerate) {
        this.stunum = stunum;
        this.surerate = surerate;
    }

    public String getStunum() {
        return stunum;
    }

    public void setStunum(String stunum) {
        this.stunum = stunum;
    }

    public double getSurerate() {
        return surerate;
    }

    public void setSurerate(double surerate) {
        this.surerate = surerate;
    }

    @Override
    public String toString() {
        return "ProgramStageSureRate{" +
                "stunum='" + stunum + '\'' +
                ", surerate=" + surerate +
                '}';
    }

    private String stunum;
    private double surerate;
}
