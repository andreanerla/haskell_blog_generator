-- hello.h
--Try changing the code we wrote in previous chapters to use the new types we created.

--We can combine makeHtml and html_, and remove body_ head_ and title_ by calling el directly in html_, which can now have the type Title -> Structure -> Html. This will make our HTML EDSL less flexible but more compact.


--Alternatively, we could create newtypes for HtmlHead and HtmlBody and pass those to html_, and we might do that in later chapters, but I've chosen to keep the API a bit simple for now, we can always refactor later!


main :: IO ()
main = putStrLn getComponentHtmlString myhtml


newtype CompleteHtml = CompleteHtml String
newtype ComponentHtml = ComponentHtml String 

getComponentHtmlString :: ComponentHtml -> String
getComponentHtmlString (ComponentHtml str) = str

append_ :: ComponentHtml -> ComponentHtml -> ComponentHtml
append_ (ComponentHtml a) (ComponentHtml b) = ComponentHtml (a <> b)

myhtml :: CompleteHtml
myhtml =
  makeHtml
    "Hello title"
    (
    h1_ "Hello, world!" <> 
    p_ "Let's learn about Haskell!" <>
    head "the head" <>
    body "something about haskell" <>
    )

makeHtml :: ComponentHtml -> ComponentHtml -> CompleteHtml
makeHtml title content = html_ (head_ (title_ title) <> body_ content)

html_ :: ComponentHtml -> CompleteHtml
html_ = el "html"

body_ :: String -> ComponentHtml
body_ = el "body"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

el :: String -> String -> ComponentHtml
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
