// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.rooblog.service;

import com.iancodes.rooblog.model.BlogPost;
import com.iancodes.rooblog.service.BlogPostServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BlogPostServiceImpl_Roo_Service {
    
    declare @type: BlogPostServiceImpl: @Service;
    
    declare @type: BlogPostServiceImpl: @Transactional;
    
    public long BlogPostServiceImpl.countAllBlogPosts() {
        return BlogPost.countBlogPosts();
    }
    
    public void BlogPostServiceImpl.deleteBlogPost(BlogPost blogPost) {
        blogPost.remove();
    }
    
    public BlogPost BlogPostServiceImpl.findBlogPost(Long id) {
        return BlogPost.findBlogPost(id);
    }
    
    public List<BlogPost> BlogPostServiceImpl.findAllBlogPosts() {
        return BlogPost.findAllBlogPosts();
    }
    
    public List<BlogPost> BlogPostServiceImpl.findBlogPostEntries(int firstResult, int maxResults) {
        return BlogPost.findBlogPostEntries(firstResult, maxResults);
    }
    
    public void BlogPostServiceImpl.saveBlogPost(BlogPost blogPost) {
        blogPost.persist();
    }
    
    public BlogPost BlogPostServiceImpl.updateBlogPost(BlogPost blogPost) {
        return blogPost.merge();
    }
    
}
