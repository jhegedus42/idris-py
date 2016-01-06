module Main

import Python
import Python.Prim
import Python.Exceptions
import Python.Lib.Os

ListObj : Type->Type
ListObj a = Obj $ PyList a

s:String
s="bla"

bla: List String
bla=[s,s,s]

blas: String
blas=show bla

myshow2:List String -> String
myshow2=show

myshow: List String->String
myshow l = "["++loop l 
  where 
    loop : List String -> String
    loop  (h::Nil)=(show h)++"]"
    loop  (h::t)=(show h)++","++loop t
    loop Nil ="]"

main : PIO ()
main = do 
  putStrLn' "hw"
  putStrLn' s
  putStrLn' blas
  putStrLn' $ show bla
  putStrLn' $ myshow bla
  putStrLn' $ myshow []
  putStrLn' $ myshow2 bla
  putStrLn' $ show (myshow2 bla == myshow bla)

