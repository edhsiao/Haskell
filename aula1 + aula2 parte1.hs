--HUGs     :l teste.hs

--AULA 1

const::Int
const=12345

pi_quad::Float
pi_quad=pi*pi

quad::Int->Int ----------------------------------------nomefuncao::tipo_param->tipo_result
quad x=x*x

tres::Int->Int->Int->Int
tres x y z = (x+y)*z
-------------------------------------------------------calculo volume
volume::Float->Float --nome funcao 
volume x=x^3	
-------------------------------------------------------funcao dentro da funcao
somax::Int->Int
somax x=x+x

soma2::Int->Int->Int
soma2 x y= somax x + somax y
-------------------------------------------------------potencia^4 usando 2 funções
potencia2::Int->Int
potencia2 x=x^2

potencia4::Int->Int
potencia4 y=potencia2 y * potencia2 y

-----------------------------------------------------------casamento de padroes

nomeDig::Int->String
nomeDig 0 = "zero"
nomeDig 1 = "um"
nomeDig x = "desconhecido"

-------------------------------------------------------------- condicao
inversa::Float->Float
inversa x
	|x == 0 = 0.0
	|otherwise =1/x
------------------------------------------------- retorna menor valor entre 2 numeros

menor::Int->Int->Int
menor x y
	|x < y = x
        |otherwise = y

------------------------------------------------- recursao

fatorial::Integer->Integer
fatorial 0 =1
fatorial n = n*fatorial(n-1)

fib::Int->Int
fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib (x-2)

-------------------------------------------------- comparar 3 numeros
iguais::Int->Int->Int->String
iguais x y z
	|(x == y) && (y == z) = "tres iguais"
	|(x == y) || (x == z) || (y == z) = "dois iguais"
	|otherwise = "diferente"

---------------------------------------------------- calculo IMC
imc:: Float->Float->Float
imc peso altura = peso / (altura^2)

----------------------------------------------------- 

--AULA 2
--TUPLA
horario:: String->(String,String,String,String)
horario dia
	|dia=="segunda"=("PP","PP","BD","BD")
	|dia=="quarta"=("Compl","Compl","PP","PP")
	|otherwise = ("Nao sei aula de",dia,"","")

-------------------------------------------------------
soma::(Float,Float,Float)->(Float,Float,Float)->(Float,Float,Float)
soma(x1,y1,z1)(x2,y2,z2)=(x1+x2,y1+y2,z1+z2)
---------------------------------------------------------------
sum::(Int,Int)->Int->(Int,Int)
sum (x,y) n = (x+n,y+n)
---------------------------------------------------------------

--Tipo condicional

f1::Float->Float->Bool
f1 x y = x*y>0

divInt:: Int->Int->Int
divInt a b = if b ==0 then a else div a b

mini::Int->Int->Int
mini a b
	|a <= b    =a
	|otherwise =b
---------------------------------------------------------------
--Funcao que calcule resto de divisao
resto:: Int->Int->Int
resto x y = x-((div x y)*y)
--------------------------------------------------------------
--Funcao para determinar se letra é vogal
vogal::Char->Bool
vogal vog
	|vog == 'a' = True
	|vog == 'e' = True
	|vog == 'i' = True
	|vog == 'o' = True
	|vog == 'u' = True
	|otherwise  = False

--Versao 2
ehvogal::Char->Bool
ehvogal x = x=='a'||x=='e'||x=='i'||x=='o'||x=='u'
----------------------------------------------------------------

--Apelido

type Vetor3 = (Float,Float,Float) --1a letra do tipo sempre maiuscula
soma1::Vetor3->Vetor3->Vetor3
soma1(x1,y1,z1)(x2,y2,z2)=(x1+x2,y1+y2,z1+z2)

-----------------------------------------------------------------

--Registro
 
  type Tpessoa = (String,Float,Char) 
  pessoa::Float->Tpessoa
  pessoa rg 
	|rg == 1 = ("Joao Silva", 12, 'm') 
	|rg == 2 = ("Maria Santos", 30, 'f') 
	|rg == 3 = ("Jonas Souza", 51, 'm') 
	|rg == 4 = ("Silvia Cardoso", 15, 'f') 
	|rg == 5 = ("Jose Coelho", 64, 'm') 
	|rg == 6 = ("Manoel Pontes", 19, 'm') 
	|rg == 7 = ("Joao Carvalho", 13, 'm') 
	|rg == 8 = ("Marcia Santana", 37, 'f') 
	|rg == 9 = ("Cassia Martinez", 21, 'f') 
	|rg == 10 = ("Cassino Silva", 43, 'm') 
	|otherwise = ("Nao encotrado", 0 ,'a')

 idade::Tpessoa->Float
 idade (x,y,z) = y

 somaidade:: Float -> Float
 somaidade n
	|n==1 = idade (pessoa 1)
	|otherwise = idade(pessoa n) + somaidade(n-1)

 idademedia::Float -> Float
 idademedia n =(somaidade n)/n
