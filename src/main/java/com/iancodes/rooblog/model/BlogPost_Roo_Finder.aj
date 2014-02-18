// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.rooblog.model;

import com.iancodes.rooblog.model.BlogPost;
import com.iancodes.rooblog.model.BlogUser;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect BlogPost_Roo_Finder {
    
    public static TypedQuery<BlogPost> BlogPost.findBlogPostsByAuthor(BlogUser author) {
        if (author == null) throw new IllegalArgumentException("The author argument is required");
        EntityManager em = BlogPost.entityManager();
        TypedQuery<BlogPost> q = em.createQuery("SELECT o FROM BlogPost AS o WHERE o.author = :author", BlogPost.class);
        q.setParameter("author", author);
        return q;
    }
    
    public static TypedQuery<BlogPost> BlogPost.findBlogPostsByCreated(Date created) {
        if (created == null) throw new IllegalArgumentException("The created argument is required");
        EntityManager em = BlogPost.entityManager();
        TypedQuery<BlogPost> q = em.createQuery("SELECT o FROM BlogPost AS o WHERE o.created = :created", BlogPost.class);
        q.setParameter("created", created);
        return q;
    }
    
    public static TypedQuery<BlogPost> BlogPost.findBlogPostsByTitleLike(String title) {
        if (title == null || title.length() == 0) throw new IllegalArgumentException("The title argument is required");
        title = title.replace('*', '%');
        if (title.charAt(0) != '%') {
            title = "%" + title;
        }
        if (title.charAt(title.length() - 1) != '%') {
            title = title + "%";
        }
        EntityManager em = BlogPost.entityManager();
        TypedQuery<BlogPost> q = em.createQuery("SELECT o FROM BlogPost AS o WHERE LOWER(o.title) LIKE LOWER(:title)", BlogPost.class);
        q.setParameter("title", title);
        return q;
    }
    
}
