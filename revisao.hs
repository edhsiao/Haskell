volume::Float->Float
volume x = x^^3

potencia_2:: Int->Int
potencia_2 x = x^2

potencia_4:: Int->Int
potencia_4 x = (potencia_2 x)^2

menor::Int->Int->Int
menor a b 
	|a < b = a
	|otherwise =b

iguais::Int->Int->Int->String
iguais a b c
	|a==b && b==c = "todos iguais"
	|(a==b && b/=c) || (a==c && a/=b) ||(b==c && a/=c)= "2 iguais"
	|otherwise = "diferentes"  

fibo::Int->Int
fibo a
	|a==0 =0
	|a==1 =1
	|otherwise = fibo(a-1)+fibo(a-2)

fat :: Int->Int
fat n 
	| n == 1 = 1
	| otherwise = n*fat(n-1)
---------------------------------------------------------
guarda x 
	| (x==0) = 0
	| (x==1) = 1
	|otherwise = 10	 

and:: Bool->Bool->Bool
and False _ = False
and _ False = False
and True True = True

-------------------------------------------
type Nome = String
type Idade = Int
type Ling= String
type Pessoa = (Nome,Idade, Ling)

pessoa::Pessoa
pessoa = ("edward",25,"C")

primeiro::Pessoa->Nome
primeiro (x,_,_) = x
segundo::Pessoa ->Idade
segundo (_,x,_) = x
terceiro::Pessoa->Ling
terceiro(_,_,x) =x
----------------------------------------------

comp [] = 0
comp (x:xs) = 1+ comp xs  

----------------------------------------------

listaIguais::[Int]->[Int]->Bool
listaIguais [] [] = True
listaIguais _ [] = False
listaIguais [] _ = False
listaIguais (a:b) (c:d)
	|(a == c) = listaIguais b d
	|otherwise = False
		
----------------------------------------------
inv_aux :: [a]->[a]->[a]
inv_aux [] abc = abc
inv_aux (x:xs) abc= inv_aux xs abc++[x]

inv :: [a]->[a]
inv [] = []
inv lista = inv_aux lista []

----------------------------------------------
inv2 ::[a]->[a]
inv2 [] = []
inv2 (x:xs) = inv2 xs ++ [x]

----------------------------------------------
pertence ::[Int]->Int->Bool
pertence [] _ = False
pertence (x:xs) a
	|x == a = True
	|otherwise = pertence xs a
----------------------------------------------
maior::[Int]->Int
maior [x] = x
maior (x:xs)| (x > maior xs) = x
	    | otherwise = maior xs
----------------------------------------------
menor2::[Int]->Int
menor2 [x] = x
menor2 (x:xs)
	|(x < menor2 xs) = x
	|otherwise = menor2 xs

---------------------------------------------
ehpar ::[Int]->Bool
ehpar [] = True
ehpar (x:xs) 
	|mod x 2 /= 0 = False
	|otherwise = ehpar xs
---------------------------------------------
par ::Int->Bool
par x = mod x 2 ==0

lista2 = [x| x<-[1..10], par x, mod x 3==0]  --[2,4,6,8,10]

----------------------------------------------
lista::[Int]
lista = [5,1,10,3,9]

{-getmenor::[Int]->Int
getmenor [x] = x
getmenor (x:xs) 
	|x < getmenor xs = x
	|otherwise = getmenor xs


remove_menor:: [Int]->[Int]
remove_menor [a] = []
remove_menor (x:xs)
	|(x == (getmenor (x:xs))) = xs
	|otherwise = (x:remove_menor xs) 

aux_ordena::[Int]->[Int]->[Int]
aux_ordena abc [] = abc
aux_ordena abc (x:xs) = aux_ordena (abc++[getmenor(x:xs)]) (remove_menor (x:xs))

ordena::[Int]->[Int]
ordena [] = []
ordena [x]= [x]
ordena lista = aux_ordena [] lista-}
--------------------------------------------------
getmenor [a] = a  -- retorna menor elemento da lista
getmenor (x:xs)
	|x < (getmenor xs) = x
	|otherwise = getmenor xs

removeMenor [h] = []  
removeMenor (h:t) 
	|h == (getmenor(h:t)) = t 
	|otherwise = h:removeMenor t 

ordena [] = []
ordena [a] = [a]
ordena lista = (getmenor lista):(ordena (removeMenor lista)) 
-----------------------------------------------------
quad :: Int->Int
quad n = quad_n
	where 
	quad_n = n*n 





