//nutrition
/datum/mood_event/fat
	description = "<span class='warning'><B>Soy tan gordo...</B></span>\n" //muh fatshaming
	mood_change = -6

/datum/mood_event/wellfed
	description = "<span class='nicegreen'>Estoy lleno!</span>\n"
	mood_change = 8

/datum/mood_event/fed
	description = "<span class='nicegreen'>Recientemente he comido algo.</span>\n"
	mood_change = 5

/datum/mood_event/hungry
	description = "<span class='warning'>Tengo un poco de hambre.</span>\n"
	mood_change = -6

/datum/mood_event/starving
	description = "<span class='boldwarning'>Me muero de hambre!</span>\n"
	mood_change = -10

//charge
/datum/mood_event/charged
	description = "<span class='nicegreen'>Siento la energia en mis venas!</span>\n"
	mood_change = 6

/datum/mood_event/lowpower
	description = "<span class='warning'>Mi energia es baja. Deberia recargarme en algun lado.</span>\n"
	mood_change = -6

/datum/mood_event/decharged
	description = "<span class='boldwarning'>Estoy desesperado por encontrar algo de energia!</span>\n"
	mood_change = -10

//Disgust
/datum/mood_event/gross
	description = "<span class='warning'>Vi algo asqueroso.</span>\n"
	mood_change = -4

/datum/mood_event/verygross
	description = "<span class='warning'>Creo que voy a vomitar...</span>\n"
	mood_change = -6

/datum/mood_event/disgusted
	description = "<span class='boldwarning'>Oh dios eso es asqueroso...</span>\n"
	mood_change = -8

/datum/mood_event/disgust/bad_smell
	description = "<span class='warning'>Huelo algo horriblemente descompuesto en esta habitacion.</span>\n"
	mood_change = -6

/datum/mood_event/disgust/nauseating_stench
	description = "<span class='warning'>El hedor de este sitio me tiene enfermo!</span>\n"
	mood_change = -12

//Generic needs events
/datum/mood_event/favorite_food
	description = "<span class='nicegreen'>IHe disfrutado comiendo eso.</span>\n"
	mood_change = 5
	timeout = 4 MINUTES

/datum/mood_event/gross_food
	description = "<span class='warning'>Realmente no me ha gustado esa comida.</span>\n"
	mood_change = -2
	timeout = 4 MINUTES

/datum/mood_event/disgusting_food
	description = "<span class='warning'>Esa comida fue asquerosa!</span>\n"
	mood_change = -6
	timeout = 4 MINUTES

/datum/mood_event/breakfast
	description = "<span class='nicegreen'>Nada como un buen desayuno para empezar el dia.</span>\n"
	mood_change = 2
	timeout = 10 MINUTES

/datum/mood_event/nice_shower
	description = "<span class='nicegreen'>Recientemente me he lavado.</span>\n"
	mood_change = 4
	timeout = 5 MINUTES

/datum/mood_event/fresh_laundry
	description = "<span class='nicegreen'>No hay nada como ponerse ropa limpia.</span>\n"
	mood_change = 2
	timeout = 10 MINUTES
