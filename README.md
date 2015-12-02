slackr: R client for slack
===========

Send messages to slack from R console!

```r
send_message(c('hello', 'world'), name = 'kirillbot', channel = '#random', attachments = att)
```

For more info about attachments read
[this documentation](https://api.slack.com/docs/attachments).
Example attachment:

```r
att <- list(
  fallback = 'Test alert',
  color = '#86a64f',
  pretext = 'testing pretext',
  author_name = "Bobby Tables",
  author_link = "http://flickr.com/bobby/",
  author_icon = "http://flickr.com/icons/bobby.jpg",
  title = "Slack API Documentation",
  title_link = "https://api.slack.com/",
  text = "Optional text that appears within the attachment",
  fields = list(
    list(
      title = "Priority",
      value = "High",
      short = FALSE
    ),
    list(
      title = "Uptime",
      value = "20 min",
      short = TRUE
    )
  ),
  image_url = "http://my-website.com/path/to/image.jpg",
  thumb_url = "http://example.com/path/to/thumb.png"
)
slackr::send_message('message body', attachments = att)
```

![proof](http://puu.sh/lGlnW/3c1e0e2a41.png)
