package com.basic.sys.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.basic.sys.annotation.IgnoreAuth;
import com.basic.sys.service.TokenService;
import com.basic.sys.service.UserService;
import com.basic.sys.utils.R;
import com.basic.sys.validator.Assert;

import java.util.Map;

/**
 * API登录授权
 *
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017-06-23 15:31
 */
@RestController
@RequestMapping("/api")
public class ApiLoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private TokenService tokenService;

    /**
     * 登录
     */
    @IgnoreAuth
    @PostMapping("login")
    public R login(String mobile, String password){
        Assert.isBlank(mobile, "手机号不能为空");
        Assert.isBlank(password, "密码不能为空");

        //用户登录
        long userId = userService.login(mobile, password);

        //生成token
        Map<String, Object> map = tokenService.createToken(userId);

        return R.ok(map);
    }

}
