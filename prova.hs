--raizes (2,-1,-1)  = (1.0,0.5)

--2x²-x-1

--raizes(2,-1,1) = Exception: raizes imaginarias

--2x²-x+1


delta a b c = (-b^2) * 4 * a * c
raiz1 a b c = ((-b) + sqrt(delta a b c)) / (2.0 * a)
raiz2 a b c = ((-b) - sqrt(delta a b c)) / (2.0 * a)


raizes (a,b,c) = if (delta a b c) < 0.0 then error "raizes imaginarias"
else ( raiz1 a b c,raiz2 a b c)
