# Build ALL chapters privately into _preview/ and open the result.
# Run with Ctrl+Shift+Enter (Source). Does not touch docs/ or GitHub.
bookdown::render_book(config_file = "_bookdown_all.yml", output_format = "bookdown::gitbook")
browseURL("_preview/index.html")