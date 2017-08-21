retira_ent::String->String
retira_ent nome = takeWhile(/='.')nome


pega_ext::String->String
pega_ext nome = tail(dropWhile(/='.')nome)
