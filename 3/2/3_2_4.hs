--Replace our Hello, world! string with richer content, use h1_ and p_. We can append HTML strings created by h1_ and p_ using the append operator <>.

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
myHtml = makeHtml "Hello Title" (h1_ "heading 1" <> "Hello World" <> p_ "paragraph")

main = putStrLn (myHtml)
