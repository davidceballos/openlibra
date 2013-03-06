import requests
masvotado = requests.get("http://openlibra.com/api/v1/get/?", params={"criteria":"most_voted","num_items":"10"})
print masvotado.text

