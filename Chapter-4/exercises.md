# Exercises Chapter 4

**What are the results of the following expressions?**

1. _length [1, 2, 3, 4, 5]_

5

2. _length [(1, 2), (2, 3), (3, 4)]_

3

3. _length allAwesome_

2

4. _length (concat allAwesome)_

5

**One works and one returns an error.**

1. _6 / 3_

Will work just fine

2. _6 / length [1, 2, 3]_

Will trigger and error because of the return type (Int), a Fractional is needed for /

**How can you ﬁx the broken code from the preceding exercise using a different division function/operator?**

´div´ can be used

**What is the type of the expression 2 + 3 == 5? What would we expect as a result?**

Type Bool Value True

**What is the type and expected result value of the following:**

1. _let x = 5_

Type Int Value 5

2. _x + 3 == 5_

Type Bool Value False

**Below are some bits of code. Which will work? Why or why not? If they will work, what value would these reduce to?**

1. _length allAwesome == 2_

Will work and will be Bool True

2. _length [1, 'a', 3, 'b']_

Won't work because array must be of the same a type.

3. _length allAwesome + length awesome_

Will work and get the sum of the two arrays

4. _(8 == 8) && ('b' < 'a')_

Will work and type will be a Bool, and result False

5. _(8 == 8) && 9_

Won't work because 9 is not a valid Bool


**Fill in the definition of the following function, using fst and snd:**

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tuple1 tuple2 = ((snd tuple1, snd tuple2), (fst tuple1, fst tuple2)) 


**Correcting syntax**

1. 
```
x = (+)
f xs = w 'x' 1
where w = length xs
```

2. 
```
\x -> x
```

3. 
```
\(x:xs) -> x
```

4. 
```
f (a,b) = a
```

**Match the function names to their types**

1. Which of the following types is the type of show?

```
c) Show a => a -> String
```

2. Which of the following types is the type of (==)?

```
b) Eq a => a -> a -> Bool
```

3. Which of the following types is the type of fst?

```
a) (a, b) -> a
```

4. Which of the following types is the type of (+)?

```
d) (+) :: Num a => a -> a -> a
```