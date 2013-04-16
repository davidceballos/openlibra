import requests
import json

masvotado = requests.get("http://openlibra.com/api/v1/get/?", params={"criteria":"most_voted","num_items":"10"})
sincorchetes = masvotado.text[2:-5]
sincomas = sincorchetes.split(']},')

final = []

for i in sincomas:
    final.append(i+"]}")

    
for i in xrange(0,9):
    print json.loads(final[i])["author"]
    print json.loads(final[i])["title"]
    print json.loads(final[i])["ID"]
