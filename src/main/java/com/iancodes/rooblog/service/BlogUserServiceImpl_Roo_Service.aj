// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.iancodes.rooblog.service;

import com.iancodes.rooblog.model.BlogUser;
import com.iancodes.rooblog.service.BlogUserServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BlogUserServiceImpl_Roo_Service {
    
    declare @type: BlogUserServiceImpl: @Service;
    
    declare @type: BlogUserServiceImpl: @Transactional;
    
    public long BlogUserServiceImpl.countAllBlogUsers() {
        return BlogUser.countBlogUsers();
    }
    
    public void BlogUserServiceImpl.deleteBlogUser(BlogUser blogUser) {
        blogUser.remove();
    }
    
    public BlogUser BlogUserServiceImpl.findBlogUser(Long id) {
        return BlogUser.findBlogUser(id);
    }
    
    public List<BlogUser> BlogUserServiceImpl.findAllBlogUsers() {
        return BlogUser.findAllBlogUsers();
    }
    
    public List<BlogUser> BlogUserServiceImpl.findBlogUserEntries(int firstResult, int maxResults) {
        return BlogUser.findBlogUserEntries(firstResult, maxResults);
    }
    
    public void BlogUserServiceImpl.saveBlogUser(BlogUser blogUser) {
        blogUser.persist();
    }
    
    public BlogUser BlogUserServiceImpl.updateBlogUser(BlogUser blogUser) {
        return blogUser.merge();
    }
    
}
