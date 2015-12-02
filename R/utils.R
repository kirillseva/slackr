incoming_hook_url <- function() {
  if (is.null(ret <- getOption('slackr.incoming_hook_url'))) {
    stop('You must set `slackr.incoming_hook_url` option.')
  }
  ret
}

DEFAULT_ICON  <- function() { getOption('slackr.default_icon', 'https://slack.com/img/icons/app-57.png') }
DEFAULT_CHANNEL <- function() { getOption('slackr.default_channel', '#general') }
