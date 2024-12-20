﻿#language: ru

@tree

Функционал: Проверка заполнения поля Организации в Заказе

В тесте для документа Заказ покупателя необходимо прописать условие по заполнению поля Организация. В случае, 
если поле Организация не заполнилось из соглашения, необходимо его заполнить с помощью шагов в тесте (тестовая база IRP)

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка и заполнение организации в заказе
* Заполнение шапки заказа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	Тогда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
	И я нажимаю кнопку выбора у поля с именем 'Agreement'
	Тогда открылось окно "Соглашения"
	И в таблице 'List' я перехожу к строке:
		| "Вид"     | "Вид взаиморасчетов" | "Код" | "Наименование"                                                    |
		| "Обычное" | "По документам"      | "1"   | "Соглашение с клиентами (расчет по документам + кредитный лимит)" |
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
* Проверка, что элемент заполнен
	И Если элемент поля с именем 'Company' не заполнен Тогда
		И я нажимаю кнопку выбора у поля с именем 'Company'
		Тогда открылось окно "Организации"
		И в таблице 'List' я активизирую поле с именем 'Description'
		И в таблице 'List' я выбираю текущую строку
		Тогда открылось окно "Заказ покупателя (создание) *"