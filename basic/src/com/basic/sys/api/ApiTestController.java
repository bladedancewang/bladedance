package com.basic.sys.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.basic.sys.annotation.IgnoreAuth;
import com.basic.sys.annotation.LoginUser;
import com.basic.sys.entity.UserEntity;
import com.basic.sys.utils.R;

/**
 * API测试接口
 *
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017-06-23 15:47
 */
@RestController
@RequestMapping("/api")
public class ApiTestController {

    /**
     * 获取用户信息
     */
    @GetMapping("userInfo")
    public R userInfo(@LoginUser UserEntity user){

        return R.ok().put("user", user);
    }

    /**
     * 忽略Token验证测试
     */
    @IgnoreAuth
    @GetMapping("notToken")
    public R notToken(){

        return R.ok().put("message", "无需token也能访问。。。");
    }
}
