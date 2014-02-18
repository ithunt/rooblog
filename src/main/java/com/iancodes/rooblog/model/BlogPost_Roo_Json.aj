// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.rooblog.model;

import com.iancodes.rooblog.model.BlogPost;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect BlogPost_Roo_Json {
    
    public String BlogPost.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String BlogPost.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static BlogPost BlogPost.fromJsonToBlogPost(String json) {
        return new JSONDeserializer<BlogPost>().use(null, BlogPost.class).deserialize(json);
    }
    
    public static String BlogPost.toJsonArray(Collection<BlogPost> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String BlogPost.toJsonArray(Collection<BlogPost> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<BlogPost> BlogPost.fromJsonArrayToBlogPosts(String json) {
        return new JSONDeserializer<List<BlogPost>>().use(null, ArrayList.class).use("values", BlogPost.class).deserialize(json);
    }
    
}