<!DOCTYPE html>
<html>
  <head>
    <title> Autor del libro </title>
  </head>
  <body>
    <p>
    <p>
      Los libros mas vistos de la categoria {{category}} son:
    </p>
     <ul>
       %for i in total:
       <li> {{i}} </li>
       %end
    <p> <a href="/">Volver al indice</a></p>
  </body>
</html>


