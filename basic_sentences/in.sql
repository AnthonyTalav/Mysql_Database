--Para tener una lista de consultas

SELECT * FROM libros WHERE titulo = "Ojos de fuego" OR
                           titulo = "Cujo" OR
                           titulo = "El hobbit" OR
                           titulo = "La torre oscura 7 la torre oscura";


--Pero esto no es dable ya que a más titulos sería más tedioso, entonces se utiliza la palabra IN para listas grandes

SELECT * FROM libros WHERE titulo IN ('Ojos de fuego',
                                      'Cujo',
                                      'El hobbit',
                                      'La torre oscura 7 la torre oscura');

