package bean;

public class ProgramStageDiffSureRate {
    public ProgramStageDiffSureRate(){}
    public ProgramStageDiffSureRate(String stunum,String title_diff, double surerate) {
        this.stunum = stunum;
        this.title_diff = title_diff;
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
        return "ProgramStageDiffSureRate{" +
                "stunum='" + stunum + '\'' +
                ", surerate=" + surerate +
                '}';
    }

    private String stunum;
    private double surerate;

    public String getTitle_diff() {
        return title_diff;
    }

    public void setTitle_diff(String title_diff) {
        this.title_diff = title_diff;
    }

    private String title_diff;

}
