package controller;

import bean.CallLog;
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
public class CallLogHandlerMonth {

    @RequestMapping("/queryCallLogList")
    public String queryCallLog(Model model, QueryInfo queryInfo){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        CallLogDAO callLogDAO = applicationContext.getBean(CallLogDAO.class);
        //以下展示用户每月的通话时长与通话次数   用户输入 2018 -1 -1
         if(queryInfo.getMonth().equals("-1") && queryInfo.getDay().equals("-1")) {

            HashMap<String, String> hashMap = new HashMap<String,String>();
            hashMap.put("telephone", queryInfo.getTelephone());
            hashMap.put("year", queryInfo.getYear());
            hashMap.put("month", queryInfo.getMonth());
            hashMap.put("day", queryInfo.getDay());

            List<CallLog> list = callLogDAO.getCallLogList(hashMap);

            StringBuilder dateSB = new StringBuilder();
            StringBuilder callSumSB = new StringBuilder();
            StringBuilder callDurationSumSB = new StringBuilder();

            for (int i = 0; i < list.size(); i++) {
                CallLog callLog = list.get(i);
                //1月, 2月, ....12月,
                dateSB.append(callLog.getMonth() + "月,");
                callSumSB.append(callLog.getCall_sum() + ",");
                callDurationSumSB.append(callLog.getCall_duration_sum() + ",");
            }

            dateSB.deleteCharAt(dateSB.length() - 1);
            callSumSB.deleteCharAt(callSumSB.length() - 1);
            callDurationSumSB.deleteCharAt(callDurationSumSB.length() - 1);

            //通过model返回数据
            model.addAttribute("telephone", list.get(0).getTelephone());
            model.addAttribute("name", list.get(0).getName());
            model.addAttribute("date", dateSB.toString());
            model.addAttribute("count", callSumSB.toString());
            model.addAttribute("duration", callDurationSumSB.toString());

            return "jsp/CallLogListMonth";

      }else {
           HashMap<String, String> hashMap2 = new HashMap<String,String>();
           hashMap2.put("telephone", queryInfo.getTelephone());
           hashMap2.put("year", queryInfo.getYear());
           hashMap2.put("month", queryInfo.getMonth());
           hashMap2.put("day", queryInfo.getDay());

           List<CallLog> list2 = callLogDAO.getCallLogListDay(hashMap2);

           StringBuilder dateSB2 = new StringBuilder();
           StringBuilder callSumSB2 = new StringBuilder();
           StringBuilder callDurationSumSB2 = new StringBuilder();

           for (int i = 0; i < list2.size(); i++) {
               CallLog callLog = list2.get(i);
               //1号, 2号, ....12号,
               dateSB2.append(callLog.getDay() + "号,");
               callSumSB2.append(callLog.getCall_sum() + ",");
               callDurationSumSB2.append(String.valueOf(Integer.valueOf(callLog.getCall_duration_sum())/60) + ",");

           }

           dateSB2.deleteCharAt(dateSB2.length() - 1);
           callSumSB2.deleteCharAt(callSumSB2.length() - 1);
           callDurationSumSB2.deleteCharAt(callDurationSumSB2.length() - 1);

           //通过model返回数据

           model.addAttribute("telephone", list2.get(0).getTelephone());
           model.addAttribute("name", list2.get(0).getName());
           model.addAttribute("month",list2.get(0).getMonth());
           model.addAttribute("date", dateSB2.toString());
           model.addAttribute("count", callSumSB2.toString());
           model.addAttribute("duration", callDurationSumSB2.toString());


           return "jsp/CallLogListDay";

        }




        //以下展示用户在某个月内的通话时长与通话次数
        //return "jsp/unknown";

    }
}
