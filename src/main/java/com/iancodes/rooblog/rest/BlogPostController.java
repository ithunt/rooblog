package com.iancodes.rooblog.rest;
import com.iancodes.rooblog.model.BlogPost;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = BlogPost.class)
@Controller
@RequestMapping("/posts")
public class BlogPostController {
}
