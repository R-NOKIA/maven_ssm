package com.web.Unitl;

public class Role_json {
    public boolean check=false;

    public Role_json(boolean check, Long id, String name, String userId) {
        this.check = check;
        this.id = id;
        this.name = name;
        this.userId = userId;
    }

    public Long id;
    public String name;

    public boolean isCheck() {
        return check;
    }

    public void setCheck(boolean check) {
        this.check = check;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String userId;
}
