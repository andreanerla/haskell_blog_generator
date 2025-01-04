--Use makeHtml in myhtml instead of using html_ and body_ directly

body_ :: String -> String 
body content = "<body>" <> content <> "</body>"

html_ :: String -> String 
html_ content = "<html>" <> content <> "</html>"

head_ :: String -> String 
head_ content = "<head>" <> content <> "</head>"

title_ :: String -> String 
title_ content = "<title>" <> content <> "</title>"

makeHtml :: String -> String -> String
makeHtml title body = html_(head_(title_(title)) <> body_(body))

myHtml = makeHtml "Hello Title" "Hello World"

main = putStrLn (myHtml)
