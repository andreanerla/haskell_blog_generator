html_ content = "<body>" <> content <> "</body>"
body_ content = "<html>" <> content <> "</html>"

myhtml = html_ (body_ "Hello, world!")

main = putStrLn myhtml
