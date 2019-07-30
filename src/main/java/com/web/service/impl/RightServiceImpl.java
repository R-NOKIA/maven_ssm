package com.web.service.impl;

import com.web.dao.Rightdao;
import com.web.model.Rights;
import com.web.service.RightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("rightService")
public class RightServiceImpl implements RightService {
    @Autowired
    private Rightdao rightdao;

    @Override
    public int insertright(Rights rights) {
        if (rightdao.insertright(rights) > 0) {
            return 1;
        } else
            return 0;
    }

    @Override
    public int deleteright(Integer user_id) {
        if (rightdao.deleteright(user_id) > 0) {
            return 1;
        } else
            return 0;
    }

    @Override
    public int updateright(Rights rights) {
        if (rightdao.updateright(rights) > 0) {
            return 1;
        } else
            return 0;
    }

    @Override
    public Rights getrightByuserid(Integer user_id) {
        
        return rightdao.getrightByuserid(user_id);
    }


    @Override
    public Rights getrightByrightid(Integer right_id) {
        
        return rightdao.getrightByrightid(right_id);
    }
}
