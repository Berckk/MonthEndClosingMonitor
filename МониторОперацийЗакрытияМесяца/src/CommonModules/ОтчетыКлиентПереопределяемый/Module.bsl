// @Импорт
// КомпоновкаДанныхВызовСервера
// * ПараметрыФормыРасшифровки
//

&После("ОбработкаРасшифровки")
Процедура Аксима_ЗакрытиеМесяца_ОбработкаРасшифровки(ФормаОтчета, Элемент, Расшифровка, СтандартнаяОбработка)
	
	Если ФормаОтчета.ИмяФормы = "Отчет.Аксима_ЗакрытиеМесяца_МониторОперацийЗакрытияМесяца.Форма" Тогда
		
		СтандартнаяОбработка = Ложь;
		
		ПоляРасшифровки = Новый Массив;
		ПоляРасшифровки.Добавить("Месяц");
		
		СтруктураРасшифровки = КомпоновкаДанныхВызовСервера.ПараметрыФормыРасшифровки(
			Расшифровка,
			ФормаОтчета.ОтчетДанныеРасшифровки, 
			Новый Массив, 
			ПоляРасшифровки);
		
		Если СтруктураРасшифровки.Свойство("Месяц") Тогда
			
			ПараметрыФормы = Новый Структура;
			ПараметрыФормы.Вставить("ПериодРегистрации", СтруктураРасшифровки.Месяц);
			
			ОткрытьФорму("Обработка.ОперацииЗакрытияМесяца.Форма", ПараметрыФормы);
			
		КонецЕсли;
		
	КонецЕсли;
	
КонецПроцедуры
