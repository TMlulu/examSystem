package controller;



import bean.*;
import dao.JudgeUser;
import dao.ProgramDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.net.URI;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MyController {
    @RequestMapping ("/login")
    public String loginPage(Model model, UserInfo userInfo){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JudgeUser judgeUser = applicationContext.getBean(JudgeUser.class);
        System.out.println("aaa");
        model.addAttribute("telephone",userInfo.getTelephone());
        String username = userInfo.getTelephone();
        String password = userInfo.getPassword();
       // password = DigestUtils.md5DigestAsHex(password.getBytes());
        Map<String,String> maps = new HashMap<>();
        System.out.println("telephone: "+username);
        System.out.println("password:"+password);
        maps.put("telephone",username);
        maps.put("password",password);
        List<UserInfo> user = judgeUser.isUser(maps);
        if(user.isEmpty()){
            model.addAttribute("msg","该用户不存在！！");
            return "index";
        }
        List<PhoneAndName> cunzai1 = judgeUser.isCunzai(userInfo, maps);
        model.addAttribute("name",cunzai1.get(0).getName());
        return "jsp/ExamStage";
    }






    @RequestMapping("/register")
    public String registerPage(Model model,UserInfo userInfo){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JudgeUser judgeUser = applicationContext.getBean(JudgeUser.class);
        System.out.println("aaa");
        model.addAttribute("telephone",userInfo.getTelephone());
        String telephone = userInfo.getTelephone();
        String password = userInfo.getPassword();

        String password1 = userInfo.getPassword1();

        if(!password1.equals(password)){
            model.addAttribute("msg","密码不一致，请重新输入");
            return "jsp/register";
        }
        Map<String,String> maps = new HashMap<>();
        System.out.println("telephone: "+telephone);
        System.out.println("password:"+password);
        maps.put("telephone",telephone);
        maps.put("password",password);
        List<UserInfo> user = judgeUser.isUser(maps);
        if(!user.isEmpty()){
            model.addAttribute("msg","该用户已存在！！请登录");
            return "jsp/register";
        }else{
            maps.remove("password");
            maps.remove("");
            maps.put("telephone",telephone);
            List<PhoneAndName> cunzai = judgeUser.isCunzai(userInfo, maps);

            if(cunzai.isEmpty()){
                model.addAttribute("msg","该手机号不存在，请重新输入");
                return "jsp/register";
            }
        }

        List<PhoneAndName> cunzai2 = judgeUser.isCunzai(userInfo, maps);
        model.addAttribute("name",cunzai2.get(0).getName());
        return "jsp/ExamStage" ;
    }


    @RequestMapping("/exam")
    public String exam(/*Model model,*/ HttpSession session, ExamBean examBean){
        session.setAttribute("examId",examBean.getExamId());
        session.setAttribute("stage",examBean.getStage());

//        model.addAttribute("examId",examBean.getExamId());
//        model.addAttribute("stage",examBean.getStage());
        return "jsp/Query";
    }


    @RequestMapping("/program")
    public String program(HttpSession session){

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        ProgramDao programDao = applicationContext.getBean(ProgramDao.class);
        //model.addAttribute()

        System.out.println("examId： "+session.getAttribute("examId"));
        System.out.println("stage: "+session.getAttribute("stage"));

        Map<String,String> map = new HashMap<>();
        map.put("examid",session.getAttribute("examId").toString());
        map.put("stage",session.getAttribute("stage").toString());
        //第一个
        List<ProgramBase> programBaseData = programDao.getBaseData(map);
        System.out.println(programBaseData);
        session.setAttribute("programBaseData",programBaseData);

        //第二个
        List<ProgramStageSureBase> programstagesurebase = programDao.programstagesurebase(map);

        session.setAttribute("programstagesurebase",programstagesurebase);
        System.out.println(programstagesurebase);

        //第三个

        List<ProgramStageDiffsureBase>  programstagediffsurebase = programDao.programstagediffsurebase(map);

        session.setAttribute("programstagediffsurebase",programstagediffsurebase);
        System.out.println(programstagediffsurebase);
    //第四个


        List<ProgramStageDiffSureRate> programstagediffsurerate = programDao.programstagediffsurerate(map);
        session.setAttribute("programstagediffsurerate",programstagediffsurerate);
        System.out.println(programstagediffsurerate);

        //正确率 第五个

        List<ProgramStageSureRate> programstagesurerate = programDao.programstagesurerate(map);
        session.setAttribute("programstagesurerate",programstagesurerate);
        System.out.println(programstagesurerate);


        return "jsp/program";

    }


}
