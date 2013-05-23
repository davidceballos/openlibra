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
	  <li><a href="id" title="ID">ID</a></li>
	  <li><a href="librosmasvisto" title="CATEGORIA">Categoria</a></li>
	  <li><a href="respuestamasvotados" title="MASVOTADOS">Mas Votados</a></li>
	  <li><a href="librosdeunautor" title="LIBROSAUTOR" class="active">Libros de un Autor</a></li>
	</ul>
      </div>
      <div id="texto">
	<div id="texto_centrado">
      <h3>Los libros del autor {{nombreautor}} son:</h3>
	<p>
	<p>
       %for i in libros:
       <p> {{i}} <p>
       %end
	</div>
      </div>
    </div>
  </body>
</html>

