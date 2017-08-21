const::Int
const=12345

pi_quad::Float
pi_quad=pi*pi

quad::Int->Int --nome::tipo_param->tipo_result
quad x=x*x

tres::Int->Int->Int->Int
tres x y z = (x+y)*z
-------------------------------------------------------calculo volume
volume::Float->Float --nome funcao 
volume x=x^3	
--------------------------------------------------------funcao dentro da funcao
somax::Int->Int
somax x=x+x

soma2::Int->Int->Int
soma2 x y= somax x + somax y
----------------------------------------------------------potencia^4
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

---------------------------------------------------- calculo imc
imc:: Float->Float->Float
imc peso altura = peso / (altura^2)


