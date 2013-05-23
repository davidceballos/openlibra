<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> ¿Que quiere hacer en OpenLibra?</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div id="centrar">
      <div id="cabezera">
	<h1> Bienvenido a la Web API de Openlibra</h1>
	<ul id="menu">
	  <li><a href="/" title="Indice" >Indice</a></li>
	  <li><a href="id" title="ID" class="active">ID</a></li>
	  <li><a href="librosmasvisto" title="CATEGORIA">Categoria</a></li>
	  <li><a href="respuestamasvotados" title="MASVOTADOS">Mas Votados</a></li>
	  <li><a href="librosdeunautor" title="LIBROSAUTOR">Libros de un Autor</a></li>
	</ul>
      </div>
      <div id="texto">
	<div>
	  <img src="style/openlibra.png" alt="image" title="image" />
	  <form action="/respuestaid" method="POST">  
	    <h3><br/><p>Dime el id del libro del que quieres conocer su autor</p><h3>
	    <p><p>
	    <input type="text" size="20" name="id_escrito" value=""/>
	    <br/>
	    <br>
      <input type='submit' value='Enviar'/>
	    </form>
	  </div>
	</div>
      </body>
    </html>
    
