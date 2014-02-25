package com.iancodes.rooblog.rss;

import com.iancodes.rooblog.model.BlogPost;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * rooblog
 *
 * @author : ian
 * @date : 2/24/14
 */
@Controller
@RequestMapping("/feeds")
public final class RssController {

    @RequestMapping("/posts")
    public String posts(ModelMap model) {
        model.addAttribute("posts", BlogPost.findAllBlogPosts());
        return "postsFeed";
    }

}
