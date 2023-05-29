# Exercises Chapter 3

**Reading syntax**

For the following lines of code, read the syntax carefully and decide if they are written correctly. Test them in your REPL after you’ve decided to check your work. Correct as many as you can.

1. _concat [[1, 2, 3], [4, 5, 6]]_

It is correct

2. _++ [1, 2, 3] [4, 5, 6]_

Parenthesis is needed for the operator ++

3. _(++) "hello" " world"_

It is correct

4. _4 !! "hello"_

Wrong order you should apply !! to hello not otherwise

5. _(!!) "hello" 4_

It is correct


6. _take "4 lovely"_

Missing second parameter of take

7. _take 3 "awesome"_

It is correct


Next we have two sets: the ﬁrst set is lines of code and the other is a set of results. Read the code and ﬁgure out which results came from which lines of code. Be sure to test them in the REPL.

1. concat [[1 * 6], [2 * 6], [3 * 6]]

[6, 12, 18]

2. "rain" ++ drop 2 "elbow"

"rainbow"

3. 10 * head [1, 2, 3]

10

5. (take 3 "Julie") ++ (tail "yes")

"Jules"

6. concat [tail [1, 2, 3], tail [4, 5, 6], tail [7, 8, 9]]

[2, 3, 5, 6, 8, 9]

**Building functions**

1. -- Given "Curry is awesome" -- Return "Curry is awesome!"

"Curry is awesome" ++ "!"

2. -- Given "Curry is awesome!" -- Return "y"

"Curry is awesome!" !! 4

3. -- Given "Curry is awesome!" -- Return "awesome!"

drop 9 "Curry is awesome!"

