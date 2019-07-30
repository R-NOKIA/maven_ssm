package com.web.service;

import com.web.model.Rights;
import org.springframework.stereotype.Service;

@Service
public interface RightService {
    int insertright(Rights rights);
    int deleteright(Integer user_id);
    int updateright(Rights rights);
    Rights getrightByuserid(Integer user_id);
    Rights getrightByrightid(Integer right_id);
}
