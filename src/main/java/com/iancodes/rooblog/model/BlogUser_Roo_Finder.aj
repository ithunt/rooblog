// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.rooblog.model;

import com.iancodes.rooblog.model.BlogUser;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect BlogUser_Roo_Finder {
    
    public static TypedQuery<BlogUser> BlogUser.findBlogUsersByNameEquals(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = BlogUser.entityManager();
        TypedQuery<BlogUser> q = em.createQuery("SELECT o FROM BlogUser AS o WHERE o.name = :name", BlogUser.class);
        q.setParameter("name", name);
        return q;
    }
    
}
