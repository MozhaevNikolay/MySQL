use mts_shop; # Выбираем бд к которой обращаемся чтобы в дальнейшем не вводить название в запросах

SELECT * FROM device name; # Вывод таблицы devise для просмотра

INSERT INTO device (`name`,`prod`,`type`,`color`,`sim`,`os`) VALUES ('Samsung Galaxy s21','2','1','6','1','1'); # Добавление в таблицу device строки

SELECT * FROM device WHERE id=1; # Отобразить таблицу device где значение столбца id=1

SELECT * FROM device where id > 1; # Отобразить таблицу device где значение столбца id>1

SELECT * FROM device where type > 1; # Отобразить таблицу device где значение столбца type>1

SELECT * FROM device where (prod > 4) and (os = 1); # Отобразить таблицу device где значение столбца prod>4 и значение столбца os=1

INSERT INTO number_of_sim_cards (`sim_type`) VALUES ('4'); # Добавляет в таблицу number_of_sim_cards значение поля sim_type=4 

SELECT * FROM device WHERE (prod > 2) or (os = 1); # Отобразить таблицу device где значение столбца prod>2 или значение столбца os=1

SELECT name, color FROM device; # Отобразить столбцы name и color из таблицы device

SELECT name, os, color FROM device; # Отобразить столбцы os, name и color из таблицы device

SELECT * FROM device ORDER BY color; # Отобразить таблицу device сортированнную по значениям столбца color по возрастанию

SELECT * FROM device ORDER BY color DESC; # Отобразить таблицу device сортированнную по значениям столбца color по убыванию

SELECT * FROM device LIMIT 4; # Отобразить таблицу device первые 4 строки

SELECT * FROM device WHERE os = 1 LIMIT 4; # Отобразить таблицу device 4 строки у которых os=1

SELECT * FROM device WHERE color=2 ORDER BY prod; # Отобразить строки таблицы device в которых color=2 и сортировать по значениям столбца prod 

UPDATE device SET type = '9' WHERE id > 2; # Указать в столбце type значение 9 если id>2

UPDATE device SET type = '1' WHERE id > 3; # Указать в столбце type значение 1 если id>3

DELETE FROM device WHERE id=13; # В таблице device удалить строку с id =13

SELECT name, os, color FROM device WHERE color=2 ORDER BY os; # Отобразить столбцы name, os, color из таблицы device где color=2 и сортировать по возрастанию значения столбца os

SELECT name, name_color From device Join color_device ON color=id_color; # Соединяет две таблицы и отображает name и name_color согласно правилу при котором столбец color таблицы device= столбцу id_color таблицы color_device

SELECT name, name_type From device Join type_device ON type=id_type; # Соединяет две таблицы и отображает столбцы name и name_type согласно правилу при котором столбец type таблицы device = столбцу id_type таблицы type_device

Create table test (id char(5), primary key (id)); #Создать таблицу test c типом данных char(5) первичным ключём id

SELECT * FROM test; # Выводит длля просмотра таблицу test

DROP TABLE test; # Удаляет таблицу test