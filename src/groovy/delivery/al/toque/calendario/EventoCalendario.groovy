package delivery.al.toque.calendario

import net.fortuna.ical4j.model.Recur;
import net.fortuna.ical4j.model.WeekDay;
import net.fortuna.ical4j.model.WeekDayList;

class EventoCalendario {

	String nombre
	Date comienzo
	Date fin
	
	Boolean recurrente
	
	String frecuency
	Date recurrentUntil
	WeekDayList weekDayList = new WeekDayList()
	
	
}
