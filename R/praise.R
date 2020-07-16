# nocov start
praise <- function() {
  plain <- c(
    "You rock!",
    "You are a coding rockstar!",
    "Keep up the good work.",
    "Woot!",
    "Way to go!",
    "Nice code.",
    praise::praise("Your tests are ${adjective}!"),
    praise::praise("${EXCLAMATION} - ${adjective} code.")
  )
  utf8 <- c(
    "\U0001f600", # smile
    "\U0001f973", # party face
    "\U0001f638", # cat grin
    paste0(strrep("\U0001f389\U0001f38a", 5), "\U0001f389"),
    "\U0001f485 Your tests are beautiful \U0001f485",
    "\U0001f947 Your tests deserve a gold medal \U0001f947",
    "\U0001f308 Your tests are over the rainbow \U0001f308",
    "\U0001f9ff Your tests look perfect \U0001f9ff",
    "\U0001f3af Your tests hit the mark \U0001f3af",
    "\U0001f41d Your tests are the bees knees \U0001f41d",
    "\U0001f4a3 Your tests are da bomb \U0001f4a3",
    "\U0001f525 Your tests are lit \U0001f525"
  )

  x <- if (cli::is_utf8_output()) c(plain, utf8) else plain
  sample(x, 1)
}

praise_emoji <- function() {
  if (!cli::is_utf8_output()) {
    return("")
  }

  emoji <- c(
    "\U0001f600", # smile
    "\U0001f973", # party face
    "\U0001f638", # cat grin
    "\U0001f308", # rainbow
    "\U0001f947", # gold medal
    "\U0001f389", # party popper
    "\U0001f38a" # confetti ball
  )
  sample(emoji, 1)
}

encourage <- function() {
  x <- c(
    "Keep trying!",
    "Don't worry, you'll get it.",
    "No one is perfect!",
    "No one gets it right on their first try",
    "Frustration is a natural part of programming :)",
    "I believe in you!"
  )

  sample(x, 1)
}
# nocov end
