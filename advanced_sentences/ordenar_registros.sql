--Para ordenar se necesita la palabra ORDER BY 'campo' y esta se ordenará de forma ascendente

SELECT titulo FROM libros ORDER BY titulo ASC/DESC; --ASC O DESC si quieres que se ordene de forma ascendente of descendete 
--Para el asc se puede omitir 

--Se puede ordenar por +2 campos

SELECT libro_id,titulo FROM libros ORDER BY libro_id AND titulo DESC;