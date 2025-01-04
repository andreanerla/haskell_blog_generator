--Use makeHtml in myhtml instead of using html_ and body_ directly

body_ content = "<body>" <> content <> "</body>"
html_ content = "<html>" <> content <> "</html>"
head_ content = "<head>" <> content <> "</head>"
title_ content = "<title>" <> content <> "</title>"

makeHtml title body = html_(head_(title_(title)) <> body_(body))

myHtml = makeHtml "Hello Title" "Hello World"

main = putStrLn (myHtml)
