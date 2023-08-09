USE home_work;

/*1. Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными. */

CREATE TABLE sales
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT
);

SELECT * FROM sales;

INSERT INTO sales 
VALUES
(1, '2022-01-01', 156),
(2, '2022-01-02', 180),
(3, '2022-01-03', 21),
(4, '2022-01-04', 124),
(5, '2022-01-05', 341);
SELECT * FROM sales;


/*2. Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва :
меньше 100 - Маленький заказ
от 100 до 300 - Средний заказ
больше 300 - Большой заказ   */

SELECT id AS "id Заказа",
	CASE
		WHEN count_product < 100 THEN 'Маленький заказ'
		WHEN count_product > 300 THEN 'Большой заказ'
		ELSE 'Средний заказ'
	END AS "Тип заказа"
FROM sales;


/* Создайте таблицу “orders”, заполните ее значениями. Выберите все заказы. В зависимости от поля order_status выведите столбец 
full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED - «Order is cancelled»  */

CREATE TABLE orders
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id VARCHAR(5) NOT NULL,
    amount DECIMAL(6,2) NOT NULL,
    order_status VARCHAR(10) NOT NULL
);

SELECT * FROM orders;

INSERT INTO orders
VALUES
(1, 'e03', 15.00, 'OPEN'),
(2, 'e01', 25.50, 'OPEN'),
(3, 'e05', 100.70, 'CLOSED'),
(4, 'e02', 22.18, 'OPEN'),
(5, 'e04', 9.50, 'CANCELLED');

SELECT 
	IF (order_status = "OPEN", "Order is in open state",
		IF(order_status = "CLOSED","Order is closed", "Order is cancelled"))
AS "full_order_status"
FROM orders;

/* Чем NULL отличается от 0? 
0 - это конкретное значение (конкретное число), а NULL указывается на отсутсвие какого-либо значения вообще,
на пустоту.*/
		


    
    


