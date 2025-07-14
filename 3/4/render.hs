--After constructing a valid Html value, we want to be able to print it to the output so we can display it in our browser. For that, we need a function that takes an Html and converts it to a String, which we can then pass to putStrLn.

newtype CompleteHtml = CompleteHtml String
newtype ComponentHtml = ComponentHtml String 

renderHtmlAsString  :: ComponentHtml -> String
renderHtmlAsString (ComponentHtml str) = str

a_html = ComponentHtml "a + " 
b_html = ComponentHtml "b"

a_string = renderHtmlAsString a_html
b_string = renderHtmlAsString b_html


test_render = a_string ++ b_string

main :: IO ()
main = putStrLn test_render
