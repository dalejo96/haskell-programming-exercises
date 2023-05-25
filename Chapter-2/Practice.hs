module Practice where
 returnFive = x
  where x = 5

 square = x * x
  where x = 5

 multiplyFixed = x * y
  where x = 5
        y = 6

 plusThree = x + y
  where x = 3
        y = 1000

 where1 = x * 3 + y
  where x = 3
        y = 1000

 where2 = x * 5
  where x = 10 * 5 + y
        y = 10

 where3 = z / x + y
  where x = 7
        y = negate x
        z = y * 10