package bean;

public class ProgramStageDiffsureBase {
    public ProgramStageDiffsureBase(){}
    public ProgramStageDiffsureBase(String stunum, String title_diff, int getscore) {
        this.stunum = stunum;
        this.title_diff = title_diff;
        this.getscore = getscore;
    }

    public String getStunum() {
        return stunum;
    }

    public void setStunum(String stunum) {
        this.stunum = stunum;
    }

    public String getTitle_diff() {
        return title_diff;
    }

    public void setTitle_diff(String title_diff) {
        this.title_diff = title_diff;
    }

    public int getGetscore() {
        return getscore;
    }

    public void setGetscore(int getscore) {
        this.getscore = getscore;
    }

    @Override
    public String toString() {
        return "ProgramStageDiffsureBase{" +
                "stunum='" + stunum + '\'' +
                ", title_diff='" + title_diff + '\'' +
                ", getscore=" + getscore +
                '}';
    }

    private String stunum;
    private String title_diff;
    private int getscore;
}
