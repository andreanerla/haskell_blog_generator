--append_ should take two Structures, and return a third Structure, appending the inner String in the first Structure to the second and wrapping the result back in Structure.

newtype CompleteHtml = CompleteHtml String
newtype ComponentHtml = ComponentHtml String

append_ :: (ComponentHtml -> a) -> (ComponentHtml -> b) -> (ComponentHtml -> c)
