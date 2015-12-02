#' Send a message to slack from R console.
#'
#' @export
send_message <- function(text, channel = DEFAULT_CHANNEL(),
  name = 'slackr', icon_url = DEFAULT_ICON(), attachments = NULL) {

  text <- paste0(text, collapse = '\n')
  stopifnot(is.character(text) && length(text) == 1 && !is.na(text))
  body <- list(
    text     = text,
    username = name,
    icon_url = icon_url,
    channel  = channel
  )
  if (!is.null(attachments)) {
    body$attachments <-
      if(is.null(names(attachments))) { attachments } else { list(attachments) }
  }
  httr::POST(
    url    = incoming_hook_url(),
    encode = 'json',
    body   = jsonlite::toJSON(body, auto_unbox = TRUE)
  )
  invisible(TRUE)
}
