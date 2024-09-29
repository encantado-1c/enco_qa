﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: Ввод количества для услуги в заказе
И В командном интерфейсе я выбираю "Продажи" "Заказы"
Тогда открылось окно "Заказы товаров"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Заказ (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем 'Покупатель' я выбираю точное значение 'Магазин "Бытовая техника"'
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Доставка"
И таблица 'Товары' стала равной:
	| 'Товар'    | 'Цена'   | 'Количество' | 'Сумма'  |
	| 'Доставка' | '250,00' | ''           | '250,00' |
И я нажимаю на кнопку с именем 'ФормаЗаписать'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2"
И в таблице 'Товары' я завершаю редактирование строки
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
И таблица 'Товары' стала равной:
	| 'Товар'    | 'Цена'   | 'Количество' | 'Сумма'  |
	| 'Доставка' | '250,00' | '2'           | '500,00' |
И я нажимаю на кнопку с именем 'ФормаЗаписать'