package bean;


public class ProgramStageSureBase {
    public ProgramStageSureBase(String stunum, int getscore) {
        this.stunum = stunum;
        this.getscore = getscore;
    }
    public ProgramStageSureBase(){}

    public String getStunum() {
        return stunum;
    }

    public void setStunum(String stunum) {
        this.stunum = stunum;
    }

    public int getGetscore() {
        return getscore;
    }

    public void setGetscore(int getscore) {
        this.getscore = getscore;
    }

    @Override
    public String toString() {
        return "ProgramStageSureBase{" +
                "stunum='" + stunum + '\'' +
                ", getscore=" + getscore +
                '}';
    }

    private String stunum;
    private int getscore;

}
