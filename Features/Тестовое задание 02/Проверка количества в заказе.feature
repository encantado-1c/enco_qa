﻿#language: ru
@tree
Функционал: Проверка количества в заказе

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка количества в заказе
И Заполнение шапки заказа
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице "Список" я выбираю текущую строку
И в таблице "Список" я выбираю текущую строку
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
И в таблице "Товары" я завершаю редактирование строки
И элемент формы с именем "ТоварыИтогКоличество" стал равен '1'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
И в таблице "Товары" я завершаю редактирование строки
И элемент формы с именем "ТоварыИтогКоличество" стал равен '2'