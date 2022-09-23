/*actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
*/


(
SELECT * FROM actor
ORDER BY first_name
)
UNION
(
SELECT * FROM customer
ORDER BY first_name
);



/*actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
*/


(
SELECT * FROM actor
ORDER BY first_name
)
INTERSECT
(
SELECT * FROM customer
ORDER BY first_name
);




/*actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.*/

(
SELECT first_name FROM actor
)
EXCEPT
(	
SELECT first_name FROM customer 
)
ORDER BY first_name;



/*İlk 3 sorguyu tekrar eden veriler için de yapalım*/
--ilk sorgu
(
SELECT * FROM actor
ORDER BY first_name
)
UNION ALL
(
SELECT * FROM customer
ORDER BY first_name
);

--ikinci sorgu
(
SELECT * FROM actor
ORDER BY first_name
)
INTERSECT
(
SELECT * FROM customer
ORDER BY first_name
);

--ucuncu sorgu
(
SELECT first_name FROM actor
)
EXCEPT
(	
SELECT first_name FROM customer 
)
ORDER BY first_name;
