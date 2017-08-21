primo:: Int->Bool
primo x = aux x(div x 2)
	where
		aux x 1 = True
		aux x k = (mod x k /=0) && aux x (k-1)

--Defina uma função de rota ção à esquerda : O primeiro elemento de uma lista é inserido no final de uma lista (tipo polimórfico)
rot::[a]->[a]
rot [] =[]
rot (x:xs) = xs++[x]
--2. Defina uma função que dada uma lista gera n rotações à esquerda de uma lista dada (polimórfica).
rot2::[a]->Int->[a]
rot2 [] x = []
rot2 [a] 0 = [a]
rot2 abc x = drop x abc ++ take x abc 
-------------------------------------------
rot3:: [a]->Int->[a]
rot3 [] _ = []
rot3 (x:xs) 0 = (x:xs)
rot3 (x:xs) n = rot3 (xs ++ [x]) (n-1)
-------------------------------------------
--3. Dado um inteiro x, defina uma função que encontre todos os números entre 1000 e 1100 que não sejam múltiplos de x.

naoMult::Int->[Int]
naoMult x = [n| n <-[1000..1100], mod x n /=0]

--4. Faça uma função que remova todo n-ésimo elemento de uma data lista.

eliminaN::[a]->Int->[a]
eliminaN [] _ = []
eliminaN lst n = take (n-1) lst ++ eliminaN (drop n lst) n
-------------------------------------------------------------
removeN::[a]->Int->[a]
removeN [] _ = []
removeN lista n = elimina lista n
	where   
                elimina [] _ = []
		elimina (x:xs) 1 = elimina xs n
		elimina (x:xs) k = x:elimina xs (k-1)		
------------------------------------------------------

--5. Faça uma função que dados 2 índices (i e j) e uma lista, ela retorne uma lista que vai do i-ésimo ao j-ésimo elemento

--pedaco_lista[1, 2, 3, 4, 5, 6, 7, 8] 2 5   -->  [2, 3, 4, 5]

pedaco::[a]->Int->Int->[a]
pedaco [] _ _ = []
pedaco abc i j = take (j-i+1) (drop (i-1) abc)
-----------------------------------------------------------------
