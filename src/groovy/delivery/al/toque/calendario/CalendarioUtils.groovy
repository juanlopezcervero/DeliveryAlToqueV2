package delivery.al.toque.calendario

import net.fortuna.ical4j.data.CalendarBuilder
import net.fortuna.ical4j.data.CalendarOutputter
import net.fortuna.ical4j.model.Calendar
import net.fortuna.ical4j.model.ContentBuilder
import net.fortuna.ical4j.model.Date
import net.fortuna.ical4j.model.Recur
import net.fortuna.ical4j.model.component.VEvent
import net.fortuna.ical4j.model.property.CalScale
import net.fortuna.ical4j.model.property.ProdId
import net.fortuna.ical4j.model.property.RRule
import net.fortuna.ical4j.model.property.Uid
import net.fortuna.ical4j.model.property.Version
import net.fortuna.ical4j.util.UidGenerator

class CalendarioUtils {
	
	public static Calendar crearCalendario(String nombre) {
		
		ContentBuilder iCalBuilder = new ContentBuilder()
		Calendar iCal = new Calendar();
		iCal.getProperties().add(new ProdId("-//Dellivery al Toque - ${nombre}//iCal4j 1.0//ES"));
		iCal.getProperties().add(Version.VERSION_2_0);
		iCal.getProperties().add(CalScale.GREGORIAN);
		
		return iCal
	}
	
	
	public static String toString(Calendar calendar) {
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		CalendarOutputter outputter = new CalendarOutputter();
		outputter.output(calendar, outStream);
		
		String iCalData = outStream.toString()
		return iCalData
	}
	
	public static String agregarEvento(String iCal, EventoCalendario evento) {
		Calendar calendar = parseCalendario(iCal)
		return agregarEvento(calendar, evento)
	}
	
	public static String agregarEvento(Calendar calendar, EventoCalendario evento) {
		Date eventStart = new Date(evento.getComienzo())
		Date eventEnd = new Date(evento.getFin())
		VEvent event=new VEvent(eventStart,eventEnd,evento.getNombre());
		UidGenerator ug = new UidGenerator("1");
		Uid uid = ug.generateUid()
		event.getProperties().add(uid);
		
		if (evento.getRecurrente()) {
			Recur recur = new Recur()
			recur.setFrequency(evento.getFrecuency())
			if (evento.getRecurrentUntil()) {
				recur.setUntil(evento.getRecurrentUntil())
			} 
			if (!evento.getWeekDayList().isEmpty())	{
				recur.getDayList().addAll(evento.getWeekDayList())
			}
			RRule rrule = new RRule(recur)
			event.getProperties().add(rrule)
		}
		
		calendar.getComponents().add(event)
		
		return uid.toString()
		
	}
	
	
	public static Calendar parseCalendario(String iCal) {
		
		StringReader sin = new StringReader(iCal);
		
		CalendarBuilder builder = new CalendarBuilder();
		
		Calendar calendar = builder.build(sin);
		return calendar
	}
	
	public static EventoCalendario crearHorarioDefault() {
		EventoCalendario evento = new EventoCalendario()
		evento.setNombre("Horario default")
		evento.setComienzo(getHour(0,0))
		evento.setFin(getHour(23,59))
		evento.setRecurrente(Boolean.TRUE)
		evento.setFrecuency(Recur.DAILY)
		
		return evento
	}
	
	public static java.util.Date getDate(Integer year, Integer month, Integer day, Integer hour, Integer minute) {
		java.util.Calendar calendar = new GregorianCalendar()
		calendar.set(year, month, day, hour, minute)
		return calendar.getTime()
	}
	
	public static java.util.Date getHour(Integer hour, Integer minute) {
		java.util.Calendar calendar = new GregorianCalendar()
		calendar.set(java.util.Calendar.HOUR_OF_DAY,hour)
		calendar.set(java.util.Calendar.MINUTE,minute)
		return calendar.getTime()
	}
}
