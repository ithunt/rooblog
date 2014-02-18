package com.iancodes.rooblog.rest;
import com.iancodes.rooblog.model.BlogUser;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = BlogUser.class)
@Controller
@RequestMapping("/users")
public class BlogUserController {
}
