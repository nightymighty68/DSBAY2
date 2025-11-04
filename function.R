shapes <- function(n, ch="*") {
  # Upper half
  for (i in 1:n) {
    spaces <- strrep(" ", n - i)
    stars  <- strrep(ch, i)
    cat(spaces, stars, "\n", sep = "")
  }
  
  # Lower half
  for (i in (n-1):1) {
    spaces <- strrep(" ", n - i)
    stars  <- strrep(ch, i)
    cat(spaces, stars, "\n", sep = "")
  }
}

shapes(5, "*")

