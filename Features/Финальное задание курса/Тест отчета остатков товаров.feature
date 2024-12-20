﻿#language: ru
@tree

Функционал: Тест отчета остатков товаров

В конфигурацию добавили отчет для вывода остатков товаров (отчет Остатки). 
Протестируем его поведение при поступлении и реализации товара

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Тест отчета остатков товаров

И В командном интерфейсе я выбираю "Товарные запасы" "Остатки товаров"
Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
И я нажимаю на кнопку с именем 'ФормаСформировать'
Тогда табличный документ 'Результат' равен:
	| 'Товар'       | 'Вес'   | 'Количество Остаток' |
	| 'Bosch1234'   | ''      | '-1,00'              |
	| 'Bosch15'     | ''      | '3,00'               |
	| 'Sony К3456P' | ''      | '108,00'             |
	| 'Veko345MO'   | ''      | '17,00'              |
	| 'Veko67NE'    | ''      | '74,00'              |
	| 'Veko876N'    | ''      | '100,00'             |
	| 'VekoNT02'    | ''      | '195,00'             |
	| 'Босоножки'   | ''      | '95,00'              |
	| 'Ботинки'     | ''      | '59,00'              |
	| 'Валенки'     | ''      | '60,00'              |
	| 'Доставка'    | ''      | '2,00'               |
	| 'Йогурт'      | '5,000' | '1 050,00'           |
	| 'Колбаса'     | ''      | '480,00'             |
	| 'Кроссовки'   | ''      | '20,00'              |
	| 'Масло'       | ''      | '226,00'             |
	| 'Молоко'      | ''      | '608,00'             |
	| 'Пинетки'     | ''      | '50,00'              |
	| 'Ряженка'     | ''      | '600,00'             |
	| 'Сапоги'      | ''      | '22,00'              |
	| 'Сланцы'      | ''      | '4,00'               |
	| 'Сметана'     | ''      | '93,00'              |
	| 'Тапочки'     | ''      | '17,00'              |
	| 'Торт '       | ''      | '365,00'             |
	| 'Туфли'       | ''      | '10,00'              |
	| 'Хлеб'        | ''      | '317,00'             |
	| 'Итого'       | ''      | '4 574,00'           |

//Теперь оформим поступление товаров и сравним макеты на предмет правильных данных
И В командном интерфейсе я выбираю "Закупки" "Поступления товаров"
Тогда открылось окно "Поступления товаров"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Поступление товара (создание)"
Когда открылось окно "Поступление товара (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
И из выпадающего списка с именем 'Поставщик' я выбираю точное значение "ЭлектроБыт ЗАО"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Bosch15"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "100,00"
И в таблице 'Товары' я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровести'

//Сформируем отчет у проверим увеличение количества
Когда В панели открытых я выбираю "Остатки товаров (Остатки товаров с характеристиками)"
Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
И я нажимаю на кнопку с именем 'ФормаСформировать'
Тогда табличный документ 'Результат' равен:
	| 'Товар'       | 'Вес'   | 'Количество Остаток' |
	| 'Bosch1234'   | ''      | '-1,00'              |
	| 'Bosch15'     | ''      | '103,00'             |
	| 'Sony К3456P' | ''      | '108,00'             |
	| 'Veko345MO'   | ''      | '17,00'              |
	| 'Veko67NE'    | ''      | '74,00'              |
	| 'Veko876N'    | ''      | '100,00'             |
	| 'VekoNT02'    | ''      | '195,00'             |
	| 'Босоножки'   | ''      | '95,00'              |
	| 'Ботинки'     | ''      | '59,00'              |
	| 'Валенки'     | ''      | '60,00'              |
	| 'Доставка'    | ''      | '2,00'               |
	| 'Йогурт'      | '5,000' | '1 050,00'           |
	| 'Колбаса'     | ''      | '480,00'             |
	| 'Кроссовки'   | ''      | '20,00'              |
	| 'Масло'       | ''      | '226,00'             |
	| 'Молоко'      | ''      | '608,00'             |
	| 'Пинетки'     | ''      | '50,00'              |
	| 'Ряженка'     | ''      | '600,00'             |
	| 'Сапоги'      | ''      | '22,00'              |
	| 'Сланцы'      | ''      | '4,00'               |
	| 'Сметана'     | ''      | '93,00'              |
	| 'Тапочки'     | ''      | '17,00'              |
	| 'Торт '       | ''      | '365,00'             |
	| 'Туфли'       | ''      | '10,00'              |
	| 'Хлеб'        | ''      | '317,00'             |
	| 'Итого'       | ''      | '4 674,00'           |

//Оформим реализацию на то же количество
И В командном интерфейсе я выбираю "Продажи" "Продажи"
Тогда открылось окно "Продажи товара"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Продажа товара (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "ЭлектроБыт ЗАО"
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Bosch15"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "100,00"
И в таблице 'Товары' я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровести'

//Сформируем отчет еще раз
Когда В панели открытых я выбираю "Остатки товаров (Остатки товаров с характеристиками)"
Тогда открылось окно "Остатки товаров (Остатки товаров с характеристиками)"
И я нажимаю на кнопку с именем 'ФормаСформировать'
Тогда табличный документ 'Результат' равен:
	| 'Товар'       | 'Вес'   | 'Количество Остаток' |
	| 'Bosch1234'   | ''      | '-1,00'              |
	| 'Bosch15'     | ''      | '3,00'               |
	| 'Sony К3456P' | ''      | '108,00'             |
	| 'Veko345MO'   | ''      | '17,00'              |
	| 'Veko67NE'    | ''      | '74,00'              |
	| 'Veko876N'    | ''      | '100,00'             |
	| 'VekoNT02'    | ''      | '195,00'             |
	| 'Босоножки'   | ''      | '95,00'              |
	| 'Ботинки'     | ''      | '59,00'              |
	| 'Валенки'     | ''      | '60,00'              |
	| 'Доставка'    | ''      | '2,00'               |
	| 'Йогурт'      | '5,000' | '1 050,00'           |
	| 'Колбаса'     | ''      | '480,00'             |
	| 'Кроссовки'   | ''      | '20,00'              |
	| 'Масло'       | ''      | '226,00'             |
	| 'Молоко'      | ''      | '608,00'             |
	| 'Пинетки'     | ''      | '50,00'              |
	| 'Ряженка'     | ''      | '600,00'             |
	| 'Сапоги'      | ''      | '22,00'              |
	| 'Сланцы'      | ''      | '4,00'               |
	| 'Сметана'     | ''      | '93,00'              |
	| 'Тапочки'     | ''      | '17,00'              |
	| 'Торт '       | ''      | '365,00'             |
	| 'Туфли'       | ''      | '10,00'              |
	| 'Хлеб'        | ''      | '317,00'             |
	| 'Итого'       | ''      | '4 574,00'           |





