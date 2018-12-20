package dao;

import bean.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Repository
public class ProgramDao {
    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;


    public List<User> queryUser(HashMap<String, String> hashMap) {
        String sql = "SELECT `telephone`,`password` FROM user WHERE `telephone` = :telephone AND`password` = :password;";
        BeanPropertyRowMapper<User> beanPropertyRowMapper = new BeanPropertyRowMapper<>(User.class);
        List<User> list = namedParameterJdbcTemplate.query(sql, hashMap, beanPropertyRowMapper);
        return list;

    }

    public List<ProgramBase> getBaseData(Map<String, String> map) {
        String sql = "select stunum,titleid,score from program where examid =:examid and stage =:stage ";
        BeanPropertyRowMapper<ProgramBase> beanPropertyRowMapper = new BeanPropertyRowMapper<>(ProgramBase.class);
        List<ProgramBase> query = namedParameterJdbcTemplate.query(sql, map, beanPropertyRowMapper);
        return  query;

    }


    public List<ProgramStageSureBase> programstagesurebase(Map<String, String> map) {
        String sql = "select stunum,getscore from programstagesurebase where examid=:examid and stage=:stage";
        BeanPropertyRowMapper<ProgramStageSureBase> beanPropertyRowMapper = new BeanPropertyRowMapper<>(ProgramStageSureBase.class);
        List<ProgramStageSureBase> query = namedParameterJdbcTemplate.query(sql, map, beanPropertyRowMapper);
        return query;
    }

    public List<ProgramStageDiffsureBase> programstagediffsurebase(Map<String, String> map) {
        String sql = "select stunum,title_diff,getscore from  programstagediffsurebase where examid=:examid and stage=:stage";
        BeanPropertyRowMapper<ProgramStageDiffsureBase> beanPropertyRowMapper = new BeanPropertyRowMapper<>(ProgramStageDiffsureBase.class);
        List<ProgramStageDiffsureBase> query = namedParameterJdbcTemplate.query(sql, map, beanPropertyRowMapper);
        return query;
    }

    public List<ProgramStageDiffSureRate> programstagediffsurerate(Map<String, String> map) {
        String sql = "select * from programstagediffsurerate where examid=:examid and stage=:stage";
        BeanPropertyRowMapper<ProgramStageDiffSureRate> beanPropertyRowMapper = new BeanPropertyRowMapper<>(ProgramStageDiffSureRate.class);
        List<ProgramStageDiffSureRate> query = namedParameterJdbcTemplate.query(sql, map, beanPropertyRowMapper);
        return query;
    }

    public List<ProgramStageSureRate> programstagesurerate(Map<String, String> map) {

        String sql = "select * from programstagesurerate where examid=:examid and stage=:stage";
        BeanPropertyRowMapper<ProgramStageSureRate> beanPropertyRowMapper = new BeanPropertyRowMapper<>(ProgramStageSureRate.class);
        List<ProgramStageSureRate> query = namedParameterJdbcTemplate.query(sql, map, beanPropertyRowMapper);
        return query;
    }
}

