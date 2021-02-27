# pokedex
Pokedex Api
Este proyecto es parte de una entrevista laboral para una empresa para el puesto de Backend Developer.

Por respeto a la empresa no voy a publicar la prueba ni todos los requerimientos, pero si lo que solicitaban.

He aquí un extracto de lo que pedían.

"The features we expect that your api would contain would be:

- Search for Pokemon by text.
- Filter Pokemon by type.
- Add and remove a Pokemon to and from your Favorites.
- Retrieve `All` Pokemons and `Favorite` Pokemons.
- Get Pokemon details.

### Backend 

Where should you write your solution.

### Technology and boilerplate

You are free to use whatever stack you want but what we value the most is [Spring](https://spring.io/). 

Use only what you are comfortable with and feel free to use any additional libraries you deem necessary to complete the exercise. 
We would like to see your model designer skills so make sure you show them to us! (You can use any JPA dependency).

### Hints
- There is no need to configure a build, the development environment is sufficient.
- **Tests** are important and if time allows it, we'd like to see *some* test coverage.
- Feel free to ask us if you have any doubt or you face any problem!"

Basicamente un API RESTful.

En el primer commit básicamente hice lo que pidieron, más no tuve buenas practicas, esto sera corregido en el segundo commit.

Al momento de hacer este Readme no sé si me van a dar el trabajo, pero como siempre hay que quedarse con lo bueno de toda experiencia,
comparto aqui lo aprendido.

1._ Usar nombres pero no verbos siempre basándonos en los recursos.

Ejemplo: 

Si quieres consultar los pokemons la URI debería ser:

baseUri/pokemons

Una mala practica es usar verbos en la URI:

baseUri/obtenerTodosLosPokemon

2._ La propia semántica que compone la URL, junto con el método HTTP usado (POST, GET, PUT, DELETE), permite prescindir de verbos como 
«create», «get», «update» y «delete».

Es decir, debes usar los métodos correspondientes para cada accion que quieras hacer.

Ejemplo: 

Si quieres obtener un pokemon en específico deberías usar el método get por su identificador único:

baseUri/pokemons/1      -- >     Siendo este un método GET

3._ Métodos GET y los parámetros de consulta no deben alterar el estado.

Para actualizar un recurso no deberías usar un método GET, usa PUT o PATCH.

4._ Proveer filtrado, ordenación, selección de campos y paginación para colecciones.

Filtrado

Utilizar un parámetro de consulta único para todos los campos o un lenguaje de consulta formalizado para filtrar.

Ordenación

Permitir ordenación ascendente o descendente sobre varios campos.

Paginación

Uso de «offset» para establecer la posición de partida de una colección y «limit» para establecer el número de elementos de la colección a devolver desde el offset. 
Es un sistema flexible para el que consume la API y bastante extendido entre los sistemas de bases de datos.


Para esta API de ejemplo estas seran las consideraciones, sin embargo hay mucha información en internet que amplia esto, para hacer este readme con mi resumen me ayude
de esta lectura:

https://mascandobits.es/programacion/buenas-practicas-para-el-buen-diseno-de-una-api-restful/

Si alguien llega a leer esto.

SALUDOS.
