package controller;



import bean.PhoneAndName;
import bean.UserInfo;
import dao.JudgeUser;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

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
        return "jsp/Query";
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
        return "jsp/Query" ;
    }

}
