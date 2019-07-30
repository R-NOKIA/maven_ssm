package com.web.dao;

import com.web.model.Rights;
import org.springframework.stereotype.Component;

@Component
public interface Rightdao {
    int insertright(Rights rights);
    int deleteright(Integer user_id);
    int updateright(Rights rights);
    Rights getrightByuserid(Integer user_id);
    Rights getrightByrightid(Integer right_id);
}
