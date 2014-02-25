package com.iancodes.rooblog.rss;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.Maps;
import com.iancodes.rooblog.model.BlogPost;
import com.sun.syndication.feed.rss.Channel;
import com.sun.syndication.feed.rss.Description;
import com.sun.syndication.feed.rss.Item;
import org.springframework.web.servlet.view.feed.AbstractRssFeedView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Maps.newHashMap;

/**
 * Provides an RSS feed for a list of {@link BlogPost}
 *
 * adapted from: Spring In Practice ch 08 - Wheeler & White 2013
 * @author : ian
 * @date : 2/24/14
 */
public class RSSFeed extends AbstractRssFeedView {

    private String feedTitle;
    private String feedDesc;
    private String feedLink;


    public List<Item> getFeedItems( List<BlogPost> posts,
                                    HttpServletRequest request,
                                    HttpServletResponse response) throws Exception {

        return buildFeedItems(ImmutableMap.<String, Object>builder().put("posts", posts).build(),
                request, response);

    }

    protected void buildFeedMetadata(
            Map model, Channel feed, HttpServletRequest request ) {

        feed.setTitle(feedTitle);
        feed.setDescription(feedDesc);
        feed.setLink(feedLink);

        super.buildFeedMetadata(model, feed, request);
    }

    @Override
    protected List<Item> buildFeedItems(Map<String, Object> model,
                                        HttpServletRequest request,
                                        HttpServletResponse response)
            throws Exception {

        Preconditions.checkArgument(model.containsKey("posts"));
        final List<BlogPost> posts = (List<BlogPost>)model.get("posts");

        return newArrayList(Iterables.transform(posts, new Function<BlogPost, Item>() {
            @Override
            public Item apply(com.iancodes.rooblog.model.BlogPost post) {
                Item item = new Item();
                item.setTitle(post.getTitle());
                item.setAuthor(post.getAuthor().getName());
                item.setPubDate(post.getPosted());
                item.setLink(post.getLink());

                Description description = new Description();
                description.setType("text/html");
                description.setValue(post.getText());

                item.setDescription(description);

                return item;
            }
        }));
    }

    public void setFeedTitle(String feedTitle) {
        this.feedTitle = feedTitle;
    }

    public void setFeedDesc(String feedDesc) {
        this.feedDesc = feedDesc;
    }

    public void setFeedLink(String feedLink) {
        this.feedLink = feedLink;
    }
}
