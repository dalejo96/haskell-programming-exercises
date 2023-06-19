# Exercises Chapter 6

**Exercises: Eq Instances**

1. 

```
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
    (TisAn a) == (TisAn b) = a == b
```

2. 

```
data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
    (Two a b) == (Two c d) = a == c && b == d
```    

3. 

```
data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
    (TisAnInt a) == (TisAnInt b) = a == b
    (TisAString a) == (TisAString b) = a == b
    _ == _ = False
```    

4. 

```
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
    (Pair a b) == (Pair c d) = a == c && b == d
```

5. 

```
data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (Tuple a b) == (Tuple c d) = a == c && b == d
```    

6. 

```
data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
    (ThisOne a) == (ThisOne b) = a == b
    (ThatOne a) == (ThatOne b) = a == b
    _ == _ = False
```   

7. 

```
data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (Hello a) == (Hello b) = a == b
    (Goodbye a) == (Goodbye b) = a == b
    _ == _ = False
```  


**Exercises: Will They Work?**

1. max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])

`5` Yes cause type of length is the same in both params.

2. compare (3 * 4) (3 * 5)

`LT` Yes cause type in both params use the same type.

3. compare "Julie" True

No cause you can't compare String with Bool

4. (5 + 3) > (3 + 6)

`False` Yes cause both params use the same type.

**Multiple choice**

1. The Eq class __c) makes equality tests possible__

2. The typeclass Ord __b) is a subclass of Eq__

3. Suppose the typeclass Ord has an operator >. What is the type of >? __a) Ord a => a -> a -> Bool__

4. In x = divMod 16 12 __c) the type of 𝑥 is a tuple__

5. The typeclass Integral includes __a) Int and Integer numbers__

**Does it typecheck?**

1. Does the following code typecheck? If not, why not?

```
data Person = Person Bool

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)
```
No, Person has no instance of Show. 

2. Does the following typecheck? If not, why not?
```
data Mood = Blah | Woot deriving Show

settleDown x = if x == Woot
                then Blah
                else x
```
No, Mood has no instance of Eq

3. If you were able to get settleDown to typecheck:

a) What values are acceptable inputs to that function?

Blah and Woot

b) What will happen if you try to run settleDown 9? Why?

Mood does not match Num a => a, this won't work

c) What will happen if you try to run Blah > Woot? Why?

Mood does not have an Ord instance, this won't work

4. Does the following typecheck? If not, why not?

```
type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
```

This will work! s2 is a Sentence instance and s1 too but as a function expecting Object param.

**Given a datatype declaration, what can we do?**

Which of the following will typecheck? For the ones that don’t typecheck, why don’t they?

```
data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

```

1. phew = Papu "chases" True

No, cause Papu need the constructor for Rocks and Yeah

2. truth = Papu (Rocks "chomskydoz") (Yeah True)

Yes, this one is correct.

3. 
```
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'
```
Yes cause Papu has the Eq deriving

4. comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'

No cause Papu has no the Ord deriving

**Match the types**

1. 

```
i :: Num a => a
i = 1
```

`i :: a` 1 is a numeric type class, so this won't work

2. 

```
f :: Float
f = 1.0
```

`f :: Num a => a` 1.0 is a fractional type, so this won't work

3. 

```
f :: Float
f = 1.0
```

`f :: Fractional a => a` This will work

4. 

```
f :: Float
f = 1.0
```

`f :: RealFrac a => a` This will work since RealFrac could be a Real or a Fractional

5. 

```
freud :: a -> a
freud x = x
```

`freud :: Ord a => a -> a` This will work since Ord is a subclass of Eq

6. 

```
freud' :: a -> a
freud' x = x
```

`freud' :: Int -> Int` We are specifying the type here so this will work

7. 

```
myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX
```

`sigmund :: a -> a` myX must be defined as Int, this won't work

8. 

```
myX = 1 :: Int
sigmund' :: Int -> Int
sigmund' x = myX
```

`sigmund' :: Num a => a -> a` This won't work since myX is already an Int

9. 

```
jung :: Ord a => [a] -> a
jung xs = head (sort xs)
```

`jung :: [Int] -> Int` This will work since Int has the Ord instance

10. 

```
young :: [Char] -> Char
young xs = head (sort xs)
```

`young :: Ord a => [a] -> a` This will work since head and sort can be used in other types than String

11. 

```
mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)
```

`signifier :: Ord a => [a] -> a` This won't work since mySort need String

**Type-Kwon-Do Two: Electric Typealoo**

1. __chk :: Eq b => (a -> b) -> a -> b -> Bool__

```
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk ab a b = ab a = b
```

2. __arith :: Num b => (a -> b) -> Integer -> a -> b__

```
arith :: Num b => (a -> b) -> Integer -> a -> b
arith ab i a = ab i + fromInteger i
```