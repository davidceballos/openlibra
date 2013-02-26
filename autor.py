import requests
autor = requests.get("http://openlibra.com/api/v1/get/?", params={"book_autor":"adrian_paenza"})
print autor.text

