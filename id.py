import requests
resid = requests.get("http://openlibra.com/api/v1/get/?", params={"id":"589"})
print resid.text


