# Exercises Chapter 5

**Exercises: Type Matching**

1. _not_

```
_ :: Bool -> Bool
```

2. _length_

```
_ :: [a] -> Int
```

3. _concat_

```
_ :: [[a]] -> [a]
```

4. _head_

```
_ :: [a] -> a
```

5. _(<)_

```
_ :: Ord a => a -> a -> Bool
```

**Exercises: Type Arguments**

1. If the type of f is a -> a -> a -> a, and the type of 𝑥 is Char then the type of f x is

```
Char -> Char -> Char
```

2. If the type of g is a -> b -> c -> b, then the type of g 0 'c' "woot" is

```
Char
```

3. If the type of h is (Num a, Num b) => a -> b -> b, then the type of h 1.0 2 is:

```
Num b => b
```

4. If the type of h is (Num a, Num b) => a -> b -> b, then the type of h 1 (5.5 :: Double) is

```
Double
```

5. If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type of jackal "keyboard" "has the word jackal in it"

```
[Char]
```

6. If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type of jackal "keyboard"

```
Eq b => b -> [Char]
```

7. If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type of kessel 1 2 is

```
(Num a, Ord a) => a
```

8. If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type of kessel 1 (2 :: Integer) is

```
(Num a, Ord a) => a
```

9. If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type of kessel (1 :: Integer) 2 is

```
Integer
```

**Exercises: Apply Yourself**

1. myConcat x = x ++ " yo"

```
myConcat :: [Char]->[Char]
```

2. myMult x = (x / 3) * 5

```
myMult :: Fractional a => a -> a
```

3. myTake x = take x "hey you"

```
myMult :: Int -> [Char]
```

4. myCom x = x > (length [1..10])

```
myCom :: Int -> Bool
```

5. myAlph x = x < 'z'

```
myAlph :: Char -> Bool
```

**Multiple choice**

1. A value of type [a] is __a list whose elements are all of some type 𝑎__

2. A function of type [[a]] -> [a] could __take a list of strings as an argument__

3. A function of type [a] -> Int -> a __returns one element of type 𝑎 from a list__

4. A function of type (a, b) -> a __takes a tuple argument and returns the ﬁrst value__

**Determine the type**

1. All function applications return a value. Determine the value returned by these function applications and the type of that value.
a) (* 9) 6

```
Num a => a
```

b) head [(0,"doge"),(1,"kitteh")]

```
Num a => (a, [Char])
```
c) head [(0 :: Integer ,"doge"),(1,"kitteh")]

```
(Int, [Char])
```
d) if False then True else False

```
Bool
```
e) length [1, 2, 3, 4, 5]

```
Int
```
f) (length [1, 2, 3, 4]) > (length "TACOCAT")

```
Bool
```

2. What is the type of w?

```
Num a => a
```

3. What is the type of z?

```
Num a => a -> a
```

4. What is the type of f?

```
Fractional a => a
```

5. What is the type of f?
```
[Char]
```

**Does it compile?**

1. No, cannot apply bigNum it is already a value

```
bigNum = (^) 5
wahoo = bigNum $ 10
```

2. Yes, will print "Hello world"

3. No, no function is applied to c

```
a = (+)
b = a
c = b 10
d = c 200
```

4. No, c does not exist

```
a = 12 + b
c = 10
b = 10000 * c
```

**Type variable or specific type constructor?**

2. f :: zed -> Zed -> Blah

zed: fully polymorphic
Zed: concrete polymorphic
Blah: concrete polymorphic

3. f :: Enum b => a -> b -> C

a: fully polymorphic
b: constrained polymorphic
C: concrete polymorphic

4. f :: f -> g -> C

f g: fully polymorphic
C: concrete polymorphic

**Write a type signature**

1. functionH (x:_) = x

```
functionH :: [a]-> a
```

2. functionC x y = if (x > y) then True else False

```
functionC :: Ord a => a -> a -> Bool
```

3. functionS (x, y) = y

```
functionS :: (a, b) -> b
```

**Given a type, write the function**

1. i :: a -> a

```
i :: a -> a
i x = x
```

2. c :: a -> b -> a

```
c :: a -> b -> a
c a b = a
```

3. c'' :: b -> a -> b

```
c'' :: b -> a -> b
c a b = a
```

4. c' :: a -> b -> b

```
c' :: a -> b -> b
c' a b = b
```

5. r :: [a] -> [a]

```
r :: [a] -> [a]
r (x:xs) = (xs: x)
```

6. co :: (b -> c) -> (a -> b) -> a -> c

```
co :: (b -> c) -> (a -> b) -> a -> c
co bc ab g = bc $ gb $ g
```

7. a :: (a -> c) -> a -> a

```
a :: (a -> c) -> a -> a
a ac g = g
```

8. a' :: (a -> b) -> a -> b

```
a' :: (a -> b) -> a -> b
a' ab f = ab f
```

**Type-Kwon-Do**

1. h :: Int -> Char

```
h :: Int -> Char
h a = g $ f a 
```

2. e :: A -> C

```
e :: A -> C
e x = w $ q x
```

3. xform :: (X, Y) -> (Z, Z)

```
xform :: (X, Y) -> (Z, Z)
xform (a,b) = (xz a, yz b)
```

4. munge :: (x -> y) -> (y -> (w, z)) -> x -> w

```
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xy ywz x = fst $ ywz $ xy x
```