body_ content = "<body>" <> content <> "</body>"
html_ content = "<html>" <> content <> "</html>"
head_ content = "<head>" <> content <> "</head>"
title_ content = "<title>" <> content <> "</title>"

--makeHtml "My page title" "My page content"
--f<html><head><title>My page title</title></head><body>My page content</body></html>

makeHtml title body = html_(head_(title_(title)) <> body_(body))

main = putStrLn (makeHtml"My page title" "My page content")
