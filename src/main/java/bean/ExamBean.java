package bean;

public class ExamBean {
    public ExamBean(){}

    public ExamBean(String examId, String stage) {
        this.examId = examId;
        this.stage = stage;
    }

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId;
    }

    public String getStage() {
        return stage;
    }

    public void setStage(String stage) {
        this.stage = stage;
    }

    private String examId;
    private String stage;

}
