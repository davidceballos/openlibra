import requests
import json

categoria = requests.get("http://openlibra.com/api/v1/get/?", params={"category":"libros_aspecotos_legales","criteria":"most_viewed"})

sincorchetes = categoria.text[2:-5]
sincomas = sincorchetes.split(']},')

final = []

for i in sincomas:
    final.append(i+"]}")
    
for i in final:
    print json.loads(i)["author"]
    print json.loads(i)["title"]
    print json.loads(i)["ID"]
