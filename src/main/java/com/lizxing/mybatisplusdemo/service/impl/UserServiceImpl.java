package com.lizxing.mybatisplusdemo.service.impl;

import com.lizxing.mybatisplusdemo.entity.User;
import com.lizxing.mybatisplusdemo.mapper.UserMapper;
import com.lizxing.mybatisplusdemo.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lizxing
 * @since 2021-03-24
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

}
