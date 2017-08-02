package com.basic.sys.validator;

import org.apache.commons.lang.StringUtils;

import com.basic.sys.utils.RRException;

/**
 * 数据校验
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017-06-23 15:50
 */
public abstract class Assert {

    public static void isBlank(String str, String message) {
        if (StringUtils.isBlank(str)) {
            throw new RRException(message);
        }
    }

    public static void isNull(Object object, String message) {
        if (object == null) {
            throw new RRException(message);
        }
    }
}
