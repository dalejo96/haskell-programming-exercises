# Exercises Chapter 7

**Exercises: Grab Bag**

1. Which (two or more) of the following are equivalent?

```
a) mTh x y z = x * y * z
b) mTh x y = \z -> x * y * z
c) mTh x = \y -> \z -> x * y * z
d) mTh = \x -> \y -> \z -> x * y * z
```

All options are equivalent

2. The type of mTh (above) is Num a => a -> a -> a -> a. Which is the type of mTh 3?

```
d) Num a => a -> a -> a
```

3. Next, we’ll practice writing anonymous lambda syntax.

a) Rewrite the f function in the where clause.

```
addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f n = n + 1
```

```
addOneIfOdd n = case odd n of
    True -> f n
    False -> n  
    where f = \n -> n + 1
```

b) Rewrite the following to use anonymous lambda syntax:

```
addFive x y = (if x > y then y else x) + 5
```

```
addFive \x -> \y = (if x > y then y else x) + 5
```

c) Rewrite the following so that it doesn’t use anonymous lambda syntax:

```
mflip f = \x -> \y -> f y x
```

```
mflip f x y = f y x
```

**Exercises: Variety Pack**

1. Given the following declarations

```
k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)
```

a) What is the type of k?

`k :: (a, b) -> a`

b) What is the type of k2? Is it the same type as k1 or k3?

`k2:: [Char]`
`k2` tuple is different for k1 and k3

c) Of k1, k2, k3, which will return the number 3 as the result?
`k3`

2. Fill in the definition of the following function:

```
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f abc def = ((fst3 abc , fst3 def), (third3 abc, third3 def))

fst3 :: (a, b, c) -> a
fst3 (a, b, c)= a

third3 :: (a, b, c) -> c
third3 (a, b, c)= c
```
or
```
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))
```

**Exercises: Case Practice**

1. 
```
functionC x y = if (x > y) then x else y
```

```
functionC x y = 
    case x > y of
        True -> x
        False -> y
```

2. 
```
ifEvenAdd2 n = if even n then (n+2) else n
```

```
ifEvenAdd2 n = 
    case (even n) of 
        True  -> n+2
        False -> n
```

3.
```
nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        EQ -> 0
```

**Exercises: Artful Dodgy**

```
dodgy x y = x + y * 10
oneIsOne = dodgy 1
oneIsTwo = (flip dodgy) 2
```

2. dodgy 1 1

`11`

3. dodgy 2 2

`22`

4. dodgy 1 2

`21`

5. dodgy 2 1

`12`

6. oneIsOne 1

`11`

7. oneIsOne 2

`21`

8. oneIsTwo 1

`21`

9. oneIsTwo 2

`22`

10. oneIsOne 3

`31`

11. oneIsTwo 3

`23`

**Exercises: Guard Duty**

1. It is probably clear to you why you wouldn’t put an otherwise in your top-most guard, but try it with avgGrade anyway and see what happens. It’ll be more clear if you rewrite it as an actual otherwise match: | otherwise = 'F'. What happens now if you pass a 90 as an argument? 75? 60?

`F` is going to be the answer for any value.

2. What happens if you take avgGrade as it is written and reorder the guards? Does it still typecheck and work the same? Try moving | y >= 0.7 = 'C' and passing it the argument 90, which should be an ‘A.’ Does it return an ‘A’?

C is going to be the answer if we move the 0.7 up. Guards are evaluated in order.

3. 
```
pal xs
    | xs == reverse xs = True
    | otherwise = False
```
b) True when xs is a palindrome

4. What types of arguments can pal take?

`xs :: Eq a => [a]`

5. What is the type of the function pal?

`pal :: Eq a => [a] -> Bool`

6. 
```
numbers x
    | x < 0 = -1
    | x == 0 = 0
    | x > 0 = 1
```
c) an indication of whether its argument is a positive or negative number or zero

7. What types of arguments can numbers take?

`x :: (Num a, Ord a) => a`

8. What is the type of the function numbers?

`number :: (Num a, Ord a, Num b) => a -> b`

**Chapter Exercises**

1. A polymorphic function

```
a) changes things into sheep when invoked
b) has multiple arguments
c) has a concrete type
d) may resolve to values of different types, depending on inputs
```

`d`

2. Two functions named f and g have types Char -> String and String -> [String] respectively. The composed function g . f has the type

```
a) Char -> String
b) Char -> [String]
c) [[String]]
d) Char -> String -> [String]
```

`b`

3. A function f has the type Ord a => a -> a -> Bool and we apply it to one numeric value. What is the type now?

```
a) Ord a => a -> Bool
b) Num -> Num -> Bool
c) Ord a => a -> a -> Integer
d) (Ord a, Num a) => a -> Bool
```

`d`

4. A function with the type (a -> b) -> c

```
a) requires values of three different types
b) is a higher-order function
c) must take a tuple as its first argument
d) has its parameters in alphabetical order
```

`b`

5. Given the following definition of f, what is the type of f True?

```
f :: a -> a
f x = x

a) f True :: Bool
b) f True :: String
c) f True :: Bool -> Bool
d) f True :: a
```

`a`

**Let’s write code**

1. The following function returns the tens digit of an integral argument.

```
tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d     = xLast `mod` 10
```

a) First, rewrite it using divMod.

```
tensDigit :: Integral a => a -> a
tensDigit x = d
      where (xLast, _) = x `divMod` 10
            (_, d) = xLast `divMod` 10
```

b) Does the divMod version have the same type as the original version?

`Yes`

c) Next, let’s change it so that we’re getting the hundreds digit instead. You could start it like this (though that may not be the only possibility):

```
hunsDigit :: Integral a => a -> a
hunsDigit x = d
      where (xLast, _) = x `divMod` 100
            (_, d) = xLast `divMod` 10
```

2. Implement the function of the type a -> a -> Bool -> a once each using a case expression and once with a guard.

```
foldBool :: a -> a -> Bool -> a
foldBool a b c = case c of
    True -> a
    False -> b
```

```
foldBool :: a -> a -> Bool -> a
foldBool a b c
 | c = a
 | otherwise = b
```

3. Fill in the definition. Note that the first argument to our function is also a function which can be applied to values. Your second argument is a tuple, which can be used for pattern matching:

```
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
```

5. Write a pointfree version of roundTrip.

```
roundTrip :: (Show a, Read a) => a -> a
roundTrip = read . show
```
6. How might we tell GHC which instance of Read to dispatch against the String now? Make the expression print (roundTrip 4) work. You will only need the has the type syntax of :: and parentheses for scoping.

```
print ((roundTrip 4) :: Int)
```