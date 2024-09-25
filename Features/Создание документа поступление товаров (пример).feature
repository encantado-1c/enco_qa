﻿#language: ru



Функционал: Создание поступления товаров
Тетстовый сценарий создания документа

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документа
// Пример комментария ctrl + /
* Открытие формы
	И В командном интерфейсе я выбираю "Закупки" "Поступления товаров"
	Тогда открылось окно "Поступления товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Поступление товара (создание)"
* Заполение шапки формы
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
	И из выпадающего списка с именем 'Поставщик' я выбираю точное значение 'Магазин "Бытовая техника"'
* Заполнение товаров
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование"  |
		| "000000012" | "Электротовары" |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "1,00"
	И в таблице 'Товары' я завершаю редактирование строки
* Завершение редактирования
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Поступление товара (создание) *" в течение 20 секунд