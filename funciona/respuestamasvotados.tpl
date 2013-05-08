<!DOCTYPE html>
<html>
  <head>
    <title> ¿Que quiere hacer en OpenLibra?</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>
  <body>
    <h2> Los 10 Libros mas votados son </h2>
     <ul>
       %for i in diezmasvotados:
       <li> {{i}} </li>
       %end
    <p> <a href="/">Volver al indice</a></p>
  </body>
</html>
