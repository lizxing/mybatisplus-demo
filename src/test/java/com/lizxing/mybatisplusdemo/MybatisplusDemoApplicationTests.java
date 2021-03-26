package com.lizxing.mybatisplusdemo;

import com.lizxing.mybatisplusdemo.entity.User;
import com.lizxing.mybatisplusdemo.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MybatisplusDemoApplicationTests {

    @Autowired
    UserMapper userMapper;

    @Test
    void contextLoads() {
    }

    @Test
    void testOptimisticLockerInnerInterceptor(){
        User user = userMapper.selectById(1);
        user.setName("bbb");
        userMapper.updateById(user);
    }

    @Test
    void testLogicDelete(){
        User user = new User();
        user.setId(6);
        user.setName("test");
        userMapper.insert(user);
        userMapper.deleteById(user);
    }

    @Test
    void testSelect(){
        userMapper.selectById(6);
    }

    @Test
    void testAutoFillInsert(){
        User user = new User();
        user.setId(7);
        user.setName("testAutoFillInsert");
        userMapper.insert(user);
    }

    @Test
    void testAutoFillUpdate(){
        User user = new User();
        user.setId(7);
        user.setName("testAutoFillUpdate");
        userMapper.updateById(user);
    }
}
