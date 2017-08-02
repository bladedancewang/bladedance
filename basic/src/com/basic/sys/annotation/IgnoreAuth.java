package com.basic.sys.annotation;

import java.lang.annotation.*;

/**
 * 忽略Token验证
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017-06-23 15:44
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface IgnoreAuth {

}
