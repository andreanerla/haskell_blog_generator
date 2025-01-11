--For now, let's create a couple of types for our use case. We want two separate types to represent:
--A complete Html document
--A type for html structures such as headings and paragraphs that can go inside the tag

--newtype Html = Html String
newtype CompleteHtml = CompleteHtml String
newtype ComponentHtml = ComponentHtml String




