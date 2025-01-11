--Add a couple more functions for defining paragraphs and headings:
--p_ which uses the tag <p> for paragraphs
--h1_ which uses the tag <h1> for headings

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

p_ :: String -> String 
p_ = el "p"

h1_ :: String -> String 
h1_ = el "h1"

makeHtml :: String -> String -> String
makeHtml title body = html_(head_(title_(title)) <> body_(body))

myHtml :: String
myHtml = makeHtml "Hello Title" "Hello World"

main = putStrLn (myHtml)
