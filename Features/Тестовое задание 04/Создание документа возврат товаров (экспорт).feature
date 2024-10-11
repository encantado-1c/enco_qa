﻿#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Создание возврата товара

Как Тестировщик хочу сделать пример возврата товара  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: Создание документа Возврат товаров
И В командном интерфейсе я выбираю "Продажи" "Реализации товаров и услуг"
Тогда открылось окно "Реализации товаров и услуг"
И я нажимаю на кнопку с именем 'FormDocumentSalesReturnGenerate'
Тогда открылось окно "Добавить строки из документов основания"
И в таблице 'BasisesTree' я разворачиваю текущую строку
И в таблице 'BasisesTree' я разворачиваю строку:
	| "Представление строки"                                | "Применить" |
	| "Реализация товаров и услуг 2 от 24.02.2021 10:18:20" | "Да"        |
И я нажимаю на кнопку с именем 'FormOk'
Тогда открылось окно "Возврат товаров от покупателя (создание)"
И я нажимаю на кнопку с именем 'FormPostAndClose'
И я закрываю все окна клиентского приложения