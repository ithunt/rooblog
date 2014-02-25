package com.iancodes.rooblog.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findBlogPostsByCreated", "findBlogPostsByAuthor", "findBlogPostsByTitleLike" })
@RooJson(deepSerialize = true)
public class BlogPost {

    /**
     */
    @NotNull
    private String title;

    /**
     */
    @Size(max = 10000)
    @NotNull
    private String text;

    /**
     */
    @NotNull
    @ManyToOne
    private BlogUser author;

    /**
     */
    @NotNull
    @Column(updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date created = new Date();

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date posted;

    /**
     */

    private Boolean hidden = false;

    private String link;

    public String getLink() {
        return "http://iancodes.com/rooblog/" + title;
    }
}
