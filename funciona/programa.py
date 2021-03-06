import bottle
import requests
import json

@bottle.route('/')
def home_page():
    return bottle.template('index')

@bottle.route('/id')
def id_codigo():
    return bottle.template('id')

@bottle.route('/respuestaid', method='POST')
def respuesta_id():
    id_escrito = bottle.request.forms.get("id_escrito")
    resid = requests.get("http://openlibra.com/api/v1/get/?", params={"id":id_escrito})
    cadena = resid.text[2:-3]
    autor = json.loads(cadena)["author"]
    return bottle.template('respuestaid', nombreautor=autor)

@bottle.route('/librosdeunautor')
def libros_autor():
    return bottle.template('librosdeunautor')

@bottle.route('/respuestaautor', method='POST')
def respuesta_autor():
    autor_escrito = bottle.request.forms.get("autor_escrito")
    autor = requests.get("http://openlibra.com/api/v1/get/?", params={"book_autor":autor_escrito})
    sincorchetes = autor.text[2:-5]
    sincomas = sincorchetes.split(']},')
    final = []
    libros = []
    for i in sincomas:
        final.append(i+"]}")
    
    for i in final:
        libros.append(json.loads(i)["title"])
        libros.append(json.loads(i)["ID"])

    return bottle.template('respuestaautor', nombreautor = autor_escrito, libros = libros)

@bottle.route('/librosmasvisto')
def libros_mas_visto():
    return bottle.template('librosmasvisto')


@bottle.route('/respuestacategoria', method='POST')
def respuesta_categoria():
    categoria = bottle.request.forms.get("categoria")
    respuesta = requests.get("http://openlibra.com/api/v1/get/?", params={"category":categoria,"criteria":"most_viewed"})
    sincorchetes = respuesta.text[2:-5]
    sincomas = sincorchetes.split(']},')
    final = []
    total =[]
    for i in sincomas:
        final.append(i+"]}")
    
    for i in final:
        total.append(json.loads(i)["title"])
        total.append(json.loads(i)["ID"])

    return bottle.template('respuestacategoria', category = categoria, total = total)


@bottle.route('/respuestamasvotados')
def libros_mas_votados():
    masvotado = requests.get("http://openlibra.com/api/v1/get/?", params={"criteria":"most_voted","num_items":"10"})
    sincorchetes = masvotado.text[2:-5]
    sincomas = sincorchetes.split(']},')
    final = []
    diezmasvotados = []
    for i in sincomas:
        final.append(i+"]}")

    for i in final:
        diezmasvotados.append(json.loads(i)["title"])
        diezmasvotados.append(json.loads(i)["ID"])

    return bottle.template('respuestamasvotados', diezmasvotados = diezmasvotados)






bottle.debug(True)
bottle.run(host='localhost', port=8080)





