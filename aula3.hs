--Aula 3 
--Lista
--[0,4..10]  [começo da lista,proximo da lista(razão)..final da lista]
--saida[0,4,8]

--[1,2,3,4]::[Int] lista do tipo int
----------------------------------------------------------
--OPERADOR ":" 

--Acrescenta um elemento ao início de uma lista
--1:[10..13]  --> [1,10,11,12,13]
----------------------------------------------------------
--OPERADOR "!!"   ::[tipo] –> Int –> [tipo] 

--pega o elemento "n" da lista

--[0.1..5]!!3   -->3.1
--"texto"!!2    -->'x'
----------------------------------------------------------
--OPERADOR "++"   ::[tipo] –> [tipo] –> [tipo] 

--junta listas

--[1, 2, 3] ++ [4, 5, 6]   -->[1,2,3,4,5,6]
---------------------------------------------------------
--Funcao concat ::[[tipo]] –> [tipo]

--concat [[1,2,3],[2,3,4]] -->[1,2,3,2,3,4]

---------------------------------------------------------
--Função length ::[tipo] –> Int

--retorna o tamanho da lista

-- length [1,3..1000]   --> 500 
---------------------------------------------------------
--Função replicate ::Int –> tipo –> [tipo]

--Retorna a lista formada por n cópias do elemento dado

--replicate 3 2  -->[2,2,2]
---------------------------------------------------------
--Função head ::[tipo] –> tipo 

--Retorna o primeiro elemento da lista

--head [2,5,7] -->2
---------------------------------------------------------
--Função tail ::[tipo] –> [tipo] 

--Retorna a lista sem o primeiro elemento (cauda)

--tail [2,5,7] -->[5,7]
---------------------------------------------------------
--Função last ::[tipo] –> tipo 

--Retorna o último elemento da lista 

--last [2,5,7] -->7
---------------------------------------------------------
--Função init ::[tipo] –> [tipo] 

-- Retorna a lista sem o último elemento 

-- init [2,5,7] 
---------------------------------------------------------
-- Função take ::Int –> [tipo] –> [tipo] 

-- Retorna a lista dos n primeiros elementos da lista dada 
 
--take 5 [1,3..20]  -->[1,3,5,7,9]
---------------------------------------------------------
-- Função drop ::Int –> [tipo] –> [tipo] 

--Retorna a lista formada pela exclusão dos n primeiros elementos da lista dada 
 
--drop 5 [1,3..20] -->[11,13,15,17,19]
---------------------------------------------------------


--Exercicio
---------------------------------------------------------
--Retorna 1o e ultimo elemento, se vazio retorna (0,)
firstLast::[Int]->(Int,Int)
firstLast []=(0,0)
firstLast x = (head x,last x)
---------------------------------------------------------
--Retorna String sem o 1o e ultimo char
stringMeio::String->String
stringMeio x 
	| length x <= 1 = []
	| otherwise = init(tail x)
---------------------------------------------------------
--Retorna k-esimo elemento da lista
kElem:: [a]->Int->a
kElem lista k
	|k > length lista = last lista
	|otherwise = lista!!k
---------------------------------------------------------
--Insere elemento no final caso nao existir na lista
insere:: Int->[Int]->[Int]
insere c [] = [c]
insere c (x:xs)
	| c == x  = (x:xs)
	| otherwise = x : insere c xs
---------------------------------------------------------
--Indicar se dada String é palindromo (arara)
ehPalim:: String->Bool
ehPalim x 
	|x== reverse x = True
	|otherwise = False









