import requests
categoria = requests.get("http://openlibra.com/api/v1/get/?", params={"category":"libros_programacion","criteria":"most_viewed"})
print categoria.text

