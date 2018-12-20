package bean;

public class ProgramBase {
    public ProgramBase(){}
    public ProgramBase(String stunum, String titleid, String score) {
        this.stunum = stunum;
        this.titleid = titleid;
        this.score = score;
    }

    public String getStunum() {
        return stunum;
    }

    public void setStunum(String stunum) {
        this.stunum = stunum;
    }

    public String getTitleid() {
        return titleid;
    }

    public void setTitleid(String titleid) {
        this.titleid = titleid;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "ProgramBase{" +
                "stunum='" + stunum + '\'' +
                ", titleid='" + titleid + '\'' +
                ", score='" + score + '\'' +
                '}';
    }

    private  String stunum;
    private String titleid;
    private  String score;
}
