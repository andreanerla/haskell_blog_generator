-- hello.hs
--Try changing the code we wrote in previous chapters to use the new types we created.


--We can combine makeHtml and html_, and remove body_ head_ and title_ by calling el directly in html_, which can now have the type Title -> Structure -> Html. This will make our HTML EDSL less flexible but more compact.


--Alternatively, we could create newtypes for HtmlHead and HtmlBody and pass those to html_, and we might do that in later chapters, but I've chosen to keep the API a bit simple for now, we can always refactor later!


newtype CompleteHtml = CompleteHtml String
newtype ComponentHtml = ComponentHtml String 

getComponentHtmlString :: ComponentHtml -> String
getComponentHtmlString (ComponentHtml str) = str

getCompleteHtmlString :: CompleteHtml -> String
getCompleteHtmlString (CompleteHtml str) = str

append_ :: ComponentHtml -> ComponentHtml -> ComponentHtml
append_ (ComponentHtml a) (ComponentHtml b) = ComponentHtml (a <> b)

el :: ComponentHtml -> ComponentHtml -> ComponentHtml
el tag content =
  ComponentHtml ("<" <> tag <> ">" <> content <> "</" <> tag <> ">")

makeHtml :: ComponentHtml -> ComponentHtml -> CompleteHtml
makeHtml title body = CompleteHtml(append_ (el "title" title) (el "body" body))

myhtml :: CompleteHtml
myhtml =
  makeHtml
    (el "Hello, title!") 
    (
--    append ((el "h2" "Hello, world!"))
--    el "p" "Let's learn about Haskell!" 
--    el "head" "the head" 
    el "something about haskell" 
    )

main :: IO ()
main = putStrLn (getCompleteHtmlString myhtml)
