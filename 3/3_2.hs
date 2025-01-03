body_ content = "<body>" <> content <> "</body>"
html_ content = "<html>" <> content <> "</html>"

myhtml = html_ (body_ "Hello, world!")

main = putStrLn myhtml
