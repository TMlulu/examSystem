package controller;

import bean.CallLog;
import bean.QueryInfo;
import bean.User;
import dao.CallLogDAO;
import dao.LoginDAO;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
//
//@Controller
//public class UserHandler {
//    @RequestMapping("/login")
//    public String userLogin(Model model, User user){
//        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
//        LoginDAO loginDAO = applicationContext.getBean(LoginDAO.class);
//
//        HashMap<String, String> hashMap = new HashMap<>();
//        hashMap.put("telephone", user.getTelephone());
//        hashMap.put("password", user.getPassword());
//
//        List<User> listUser = loginDAO.queryUser(hashMap);
//if(listUser != null && listUser.size() == 1)
//{
//    model.addAttribute("telephone",listUser.get(0).getTelephone());
//    return "jsp/Query";
//}else{
//    return "jsp/Failed";
//}
//    }
//}
