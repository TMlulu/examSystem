package dao;

import bean.PhoneAndName;
import bean.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class JudgeUser {
    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public List<UserInfo>  isUser(Map<String,String> usermap){
        String sql = "select telephone,password from user where telephone =:telephone and password =:password";
//        BeanPropertyRowMapper<CallLog> beanPropertyRowMapper = new BeanPropertyRowMapper<>(CallLog.class);
//        List<CallLog> list = namedParameterJdbcTemplate.query(sql, paramsMap, beanPropertyRowMapper);
//        return list;
        BeanPropertyRowMapper<UserInfo> beanPropertyRowMapper = new BeanPropertyRowMapper<>(UserInfo.class);
        List<UserInfo> query = namedParameterJdbcTemplate.query(sql, usermap, beanPropertyRowMapper);

        return query;
    }


    public List<PhoneAndName> isCunzai(UserInfo user,Map<String,String>  maps){

        /*
          String sql="insert into tb_test1 values(:username,:password,:sex)";  //:后面的名称必须和stu属性名称一样
               SqlParameterSource ps=new BeanPropertySqlParameterSource(user);
               KeyHolder keyholder=new GeneratedKeyHolder();

               namedParameterJdbcTemplate.update(sql, ps,keyholder); //加上KeyHolder这个参数可以得到添加后主键的值
         */
        //查询该手机号是否存在
        System.out.println(maps);
        String sql = "select telephone, name from tb_contacts where telephone =:telephone";
        BeanPropertyRowMapper<PhoneAndName> stringBeanPropertyRowMapper = new BeanPropertyRowMapper<>(PhoneAndName.class);
        List<PhoneAndName> query = namedParameterJdbcTemplate.query(sql, maps, stringBeanPropertyRowMapper);

        if(!query.isEmpty()){

            sql = "insert into user(telephone,password) values(:telephone,:password)";
            BeanPropertySqlParameterSource beanPropertySqlParameterSource = new BeanPropertySqlParameterSource(user);
            //添加该参数返回主键
            GeneratedKeyHolder keyhoder = new GeneratedKeyHolder();
            namedParameterJdbcTemplate.update(sql, beanPropertySqlParameterSource, keyhoder);
        }
        System.out.println(query);
        return query;
    }

}
