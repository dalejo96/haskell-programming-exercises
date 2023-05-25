sayHello :: String -> IO ()
sayHello x = putStrLn("Hello, "++ x++"!")


triple :: Num a => a -> a
triple x = x * 3

circularArea :: Floating a => a -> a
circularArea x = pi * (x * x)