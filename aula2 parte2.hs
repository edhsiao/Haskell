--AULA 2

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
---------------------------------------------------- ESPAÇO!!!!!!
--retorna idade
 idade:: Tpessoa -> Float
 idade (x,y,z) = y


--soma idades até um dado registro
 somaidade:: Float -> Float
 somaidade n
	|n==1 = idade (pessoa 1)
	|otherwise = idade(pessoa n) + somaidade(n-1)

--calculo idade media até um dado registro
 idademedia::Float -> Float
 idademedia n =(somaidade n)/n


 contamax::Float->Float
 contamax n = conta n 0

 conta::Float->Float->Float -- conta numero de pessoa do sexo masculino
 conta n cont
	|n==0 = cont
	|sexo(pessoa n) == 'm' = conta(n-1) (cont+1)
	|otherwise = conta(n-1) cont

 sexo::Tpessoa-> Char
 sexo(x,y,z) = z

