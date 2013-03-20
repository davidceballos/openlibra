import requests
import json

resid = requests.get("http://openlibra.com/api/v1/get/?", params={"id":"589"})
cadena = resid.text[2:-3]
autor = json.loads(cadena)["author"]
print autor
