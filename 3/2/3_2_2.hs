--Change the implementation of the HTML functions we built to use el instead

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

head_ :: String -> String 
head_ = el "head"

html_ :: String -> String 
html_ = el "html"

body_ :: String -> String 
body_ = el "body"

title_ :: String -> String 
title_ = el "title"

makeHtml :: String -> String -> String
makeHtml title body = html_(head_(title_(title)) <> body_(body))

myHtml :: String
myHtml = makeHtml "Hello Title" "Hello World"

main = putStrLn (myHtml)
