package dao;

import bean.CallLog;
import bean.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class LoginDAO {
    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;


    public List<User> queryUser(HashMap<String, String> hashMap) {
        String sql = "SELECT `telephone`,`password` FROM user WHERE `telephone` = :telephone AND`password` = :password;";
        BeanPropertyRowMapper<User> beanPropertyRowMapper = new BeanPropertyRowMapper<>(User.class);
        List<User> list = namedParameterJdbcTemplate.query(sql, hashMap, beanPropertyRowMapper);
        return list;
    }
}
