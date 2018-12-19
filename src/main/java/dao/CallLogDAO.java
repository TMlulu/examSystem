package dao;

import bean.CallLog;
import bean.IntimacyBean;
import jdk.nashorn.internal.codegen.CompilerConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class CallLogDAO {
    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public List<CallLog> getCallLogList(HashMap<String, String> paramsMap) {
        //按照年统计：统计某个用户，1年12个月的所有的数据（不精确到day）
        String sql = "SELECT `call_sum`, `call_duration_sum`, `telephone`, `name`, `year` , `month`, `day` FROM tb_dimension_date t4 INNER JOIN ( SELECT `id_date_dimension`, `call_sum`, `call_duration_sum`, `telephone`, `name` FROM tb_call t2 INNER JOIN ( SELECT `id`, `telephone`, `name` FROM tb_contacts WHERE telephone = :telephone ) t1 ON t2.id_contact = t1.id ) t3 ON t4.id = t3.id_date_dimension WHERE `year` = :year AND `month` != :month AND `day` = :day ORDER BY `year`, `month`;";
        BeanPropertyRowMapper<CallLog> beanPropertyRowMapper = new BeanPropertyRowMapper<>(CallLog.class);
        List<CallLog> list = namedParameterJdbcTemplate.query(sql, paramsMap, beanPropertyRowMapper);
        return list;
    }
    public List<CallLog> getCallLogListDay(HashMap<String, String> hashMap2) {
        //统计某个月每天的通话次数和通话时长
        String sql1 = "SELECT `call_sum`, `call_duration_sum`, `telephone`, `name`, `year` , `month`, `day` FROM tb_dimension_date t4 INNER JOIN ( SELECT `id_date_dimension`, `call_sum`, `call_duration_sum`, `telephone`, `name` FROM tb_call t2 INNER JOIN ( SELECT `id`, `telephone`, `name` FROM tb_contacts WHERE telephone = :telephone ) t1 ON t2.id_contact = t1.id ) t3 ON t4.id = t3.id_date_dimension WHERE `year` = :year AND `month` = :month AND `day` != :day ORDER BY `month`, `day`;";
        BeanPropertyRowMapper<CallLog> beanPropertyRowMapper1 = new BeanPropertyRowMapper<>(CallLog.class);
        List<CallLog> list1 = namedParameterJdbcTemplate.query(sql1, hashMap2, beanPropertyRowMapper1);
        return list1;
    }
    //获取用户的亲密度
    public List<IntimacyBean> getIntimacyList(HashMap<String, String> hashMap) {
        String sql2 = "SELECT `name`,`intimacy_rank` FROM (SELECT `contact_id2`,`intimacy_rank` from (SELECT `id` FROM tb_contacts WHERE telephone = :telephone) t1 INNER JOIN tb_intimacy t2 ON t1.id=t2.contact_id1)t3 INNER JOIN tb_contacts ON tb_contacts.id = t3.contact_id2;";
        BeanPropertyRowMapper<IntimacyBean> beanPropertyRowMapper2 = new BeanPropertyRowMapper<>(IntimacyBean.class);
        List<IntimacyBean> list2 = namedParameterJdbcTemplate.query(sql2, hashMap, beanPropertyRowMapper2);
        return list2;
    }

    public List<CallLog> getMysefName(HashMap<String, String> hashMap) {
        String sql3 = "SELECT `name` FROM tb_contacts WHERE telephone = :telephone;";
        BeanPropertyRowMapper<CallLog> beanPropertyRowMapper3 = new BeanPropertyRowMapper<>(CallLog.class);
        List<CallLog> list3 = namedParameterJdbcTemplate.query(sql3, hashMap, beanPropertyRowMapper3);
        return list3;
    }
}
