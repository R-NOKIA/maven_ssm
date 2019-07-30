package com.web.model;

import org.springframework.stereotype.Component;

@Component
public class Rights {
    private Integer right_id;
    private Integer user_id;
    private String add_state;
    private String delete_state;
    private String select_state;
    private String update_state;

    @Override
    public String toString() {
        return "rights{" +
                "right_id='" + right_id + '\'' +
                ", user_id='" + user_id + '\'' +
                ", add_state='" + add_state + '\'' +
                ", delete_state='" + delete_state + '\'' +
                ", select_state='" + select_state + '\'' +
                ", update_state='" + update_state + '\'' +
                '}';
    }

    public Integer getRight_id() {
        return right_id;
    }

    public void setRight_id(Integer right_id) {
        this.right_id = right_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getAdd_state() {
        return add_state;
    }

    public void setAdd_state(String add_state) {
        this.add_state = add_state;
    }

    public String getDelete_state() {
        return delete_state;
    }

    public void setDelete_state(String delete_state) {
        this.delete_state = delete_state;
    }

    public String getSelect_state() {
        return select_state;
    }

    public void setSelect_state(String select_state) {
        this.select_state = select_state;
    }

    public String getUpdate_state() {
        return update_state;
    }

    public void setUpdate_state(String update_id_state) {
        this.update_state = update_id_state;
    }
}
