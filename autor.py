import requests
import json

import requests
autor = requests.get("http://openlibra.com/api/v1/get/?", params={"book_autor":"adrian_paenza"})
sincorchetes = autor.text[2:-5]
sincomas = sincorchetes.split(']},')

final = []

for i in sincomas:
    final.append(i+"]}")
    
for i in final:
    print json.loads(i)["title"]
    print json.loads(i)["ID"]
