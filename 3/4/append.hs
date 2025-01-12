--append_ should take two ComponentHtmls, and return a third ComponentHtml, appending the inner String in the first ComponentHtml to the second and wrapping the result back in ComponentHtml.

newtype CompleteHtml = CompleteHtml String
newtype ComponentHtml = ComponentHtml String 

getComponentHtmlString :: ComponentHtml -> String
getComponentHtmlString (ComponentHtml str) = str

append_ :: ComponentHtml -> ComponentHtml -> ComponentHtml
append_ (ComponentHtml a) (ComponentHtml b) = ComponentHtml (a <> b)

a_append = ComponentHtml "a + " 
b_append = ComponentHtml "b"

test_append_ = append_ a_append b_append
str_test_append = getComponentHtmlString test_append_

main :: IO ()
main = putStrLn str_test_append
