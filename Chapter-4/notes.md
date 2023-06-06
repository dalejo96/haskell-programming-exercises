# Basic datatypes

- String is a type alias, or type synonym, for a list of Char.

- A tuple is an ordered grouping of values. The types of the elements of tuples are allowed to vary, so you can have both (String, String) or (Integer, String).

- Data declarations define new datatypes in Haskell. Data declarations always create a new type constructor, but may or may not create new data constructors.

- A type alias is a way to refer to a type constructor or type constant by an alternate name.

- Polymorphism in Haskell means being able to write code in terms of values which may be one of several, or any type.


**Conventions**

- Type variables (that is, variables in type signatures) generally start at 𝑎 and go from there: 𝑎, 𝑏, 𝑐, and so forth.

- Functions can be used as arguments and in that case are typically labeled with variables starting at 𝑓 (followed by 𝑔 and so on).

- Variables do not have to be a single letter. If there are many variables in a function or program, as is common, it is helpful to have descriptive variable names.

- Arguments to functions are most often given names starting at 𝑥.

- If you have a list of things you have named 𝑥, by convention that will usually be called 𝑥𝑠, that is, the plural of 𝑥. You will see this convention often in the form (x:xs), which means you have a list in
which the head of the list is 𝑥 and the rest of the list is 𝑥𝑠.