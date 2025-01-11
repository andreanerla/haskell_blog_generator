body_ content = "<body>" <> content <> "</body>"
html_ content = "<html>" <> content <> "</html>"
head_ content = "<head>" <> content <> "</head>"
title_ content = "<title>" <> content <> "</title>"

myhtml = html_ (body_ "Hello, world!")

main = putStrLn myhtml
