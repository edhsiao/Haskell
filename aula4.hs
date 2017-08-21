-- lista vazia, simbolizada por [ ], que pode ser de qualquer tipo;

--  lista não vazia, simbolizada por (a : x), onde a representa um elemento da lista, portanto tem um tipo, e x representa uma lista composta de elementos do mesmo tipo de a. O elemento a é chamado de cabeça e x é a cauda da lista.
--------------------------------------------------------------------------
--Usando compressão de listas, faça uma função que gere uma lista com as strings dos números binários de 4 bits

bin4::[String] --"01" = ['0','1']
bin4 = [ [b1,b2,b3,b4]|b1<-"01",b2<-"01",b3<-"01",b4<-"01"]

--Faça uma função que gere uma lista com as strings dos números binários de n bits

bin::Int->[String]
bin 1 = ["0","1"]
bin n = [x:xs | x<-"01",xs<-bin(n-1)]

--Faça uma função que ordene os elementos de uma dada lista

menor [a] = a  -- retorna menor elemento da lista
menor (x:xs)
	|x < (menor xs) = x
	|otherwise = menor xs

removeMenor [h] = []   --remove menor elemento da lista
removeMenor (h:t) 
	|h == (menor(h:t)) = t --se h for menor, retorna cauda(lista que sobra)
	|otherwise = h:removeMenor t --concatena h com o menor retirado da cauda)

ordena [] = []
ordena [a] = [a]
ordena lista = (menor lista):(ordena (removeMenor lista)) 

--Faça uma função que retorne o maior elemento e sua posição relativa de um dada lista
--ex: maior2 [111, 2, 51, 3, 5, 20]   =>  (111,1) 
--maior2 [11, 2, 51, 3, 5, 20]        =>  (51,3) 
--maior2 [11, 2, 51, 3, 5, 200]       =>  (200,6) 

maior [a]=a
maior(h:t)
	|h > (maior t) = h
	|otherwise = maior t


---------------------------------------------------------------------------
--Faça uma função que retire de uma lista de inteiros,todos os multiplos de n

multiploN::[Int]->Int->[Int]
multiploN lista n = [x|x<-lista,mod x n /=0]


