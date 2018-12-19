package controller;

import bean.CallLog;
import bean.IntimacyBean;
import bean.QueryInfo;
import dao.CallLogDAO;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;

@Controller
public class IntimacyHandler {

@RequestMapping("/intimacyQuery")
public String queryIntimacy(Model model, QueryInfo queryInfo){
    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
    CallLogDAO callLogDAO = applicationContext.getBean(CallLogDAO.class);
    HashMap<String, String> hashMap = new HashMap<>();


    hashMap.put("telephone", queryInfo.getTelephone());
    //传递给dao层
    List<IntimacyBean> list = callLogDAO.getIntimacyList(hashMap);
    List<CallLog> mySelfName = callLogDAO.getMysefName(hashMap);
    model.addAttribute("namemyself",mySelfName.get(0).getName());
    StringBuilder nameList = new StringBuilder();
    StringBuilder intimacyList = new StringBuilder();


    for (int i = 0; i < list.size(); i++) {
        IntimacyBean intiBean = list.get(i);
        nameList.append(intiBean.getName()+",");
        intimacyList.append(intiBean.getIntimacy_rank()+",");
    }


    nameList.deleteCharAt(nameList.length() - 1);
    intimacyList.deleteCharAt(intimacyList.length() - 1);


    //通过model返回数据
    model.addAttribute("name",nameList.toString());
    model.addAttribute("intimacy_rank",intimacyList.toString());

    return "jsp/Intimacy";

}
}
