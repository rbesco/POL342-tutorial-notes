# Build ALL chapters privately into _preview/ and open the result.
# Run with Ctrl+Shift+Enter (Source). Does not touch docs/ or GitHub.
# Builds in a fresh R session so an earlier Build Book can't leak its settings in.
preview_file <- xfun::Rscript_call(
  bookdown::render_book,
  list(config_file = "_bookdown_all.yml", output_format = "bookdown::gitbook")
)
browseURL(normalizePath(preview_file))
shell.exec(normalizePath(preview_file))  # opens in your default browser (Windows)
