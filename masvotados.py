import requests
import json

masvotado = requests.get("http://openlibra.com/api/v1/get/?", params={"criteria":"most_voted","num_items":"10"})
sincorchetes = masvotado.text[2:-5]
sincomas = sincorchetes.split(']},')

final = []

for i in sincomas:
    final.append(i+"]}")

for i in final:
    print json.loads(i)["author"]
    print json.loads(i)["title"]
    print json.loads(i)["ID"]
