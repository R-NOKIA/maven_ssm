package com.web.Unitl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;


public class PermissionTree_json {
    public String href="javascript:void(0)";
    public String text=null;
    public List<Integer> tags=new ArrayList<>();

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "PermissionTree_json{" +
                "href='" + href + '\'' +
                ", text='" + text + '\'' +
                ", tags=" + tags +
                ", nodes=" + nodes +
                '}';
    }

    public List<Integer> getTags() {
        return tags;
    }

    public void setTags(List<Integer> tags) {
        this.tags = tags;
    }

    public List<HashMap> getNodes() {
        return nodes;
    }

    public void setNodes(List<HashMap> nodes) {
        this.nodes = nodes;
    }
    public void set_Nodes(Set<String> set){
        for (String i: set) {
            HashMap<String,String> text=new HashMap<>();
            text.put("text",i);
            text.put("href","");
            this.nodes.add(text);
            System.out.println(i);
        }
    }
    public void int_tags(int n){
        this.tags.add(n);
    }

    public List<HashMap> nodes=new ArrayList<>();
}
