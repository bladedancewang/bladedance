package com.basic.sys.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.basic.sys.annotation.IgnoreAuth;
import com.basic.sys.entity.UserEntity;
import com.basic.sys.service.UserService;
import com.basic.sys.utils.R;
import com.basic.sys.validator.Assert;

/**
 * 注册
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017-06-26 17:27
 */
@RestController
@RequestMapping("/api")
public class ApiRegisterController {
    @Autowired
    private UserService userService;

    /**
     * 注册
     */
    @IgnoreAuth
    @PostMapping("register")
    public R register(@RequestBody UserEntity user){
        Assert.isBlank(user.getMobile(), "手机号不能为空");
        Assert.isBlank(user.getPassword(), "密码不能为空");

        userService.save(user);

        return R.ok();
    }
}
