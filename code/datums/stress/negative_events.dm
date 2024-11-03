/datum/stressevent/vice
	timer = 5 MINUTES
	stressadd = 5
	desc = list(span_boldred("No me entrego a mi vicio."),span_boldred("Necesito saciar mi vicio."))

/datum/stressevent/miasmagas
	timer = 10 SECONDS
	stressadd = 2
	desc = span_red("Huele a muerte aqui.")

/datum/stressevent/peckish
	timer = 10 MINUTES
	stressadd = 1
	desc = span_red("Me apetece comer algo.")

/datum/stressevent/hungry
	timer = 10 MINUTES
	stressadd = 3
	desc = span_red("Tengo hambre.")

/datum/stressevent/starving
	timer = 10 MINUTES
	stressadd = 5
	desc = span_boldred("Estoy hambriento.")

/datum/stressevent/drym
	timer = 10 MINUTES
	stressadd = 1
	desc = span_red("Tengo un poco de sed.")

/datum/stressevent/thirst
	timer = 10 MINUTES
	stressadd = 3
	desc = span_red("Tengo sed.")

/datum/stressevent/parched
	timer = 10 MINUTES
	stressadd = 5
	desc = span_boldred("Me voy a morir de sed.")

/datum/stressevent/dismembered
	timer = 40 MINUTES
	stressadd = 5
	desc = span_boldred("Me han amputado un miembro.")

/datum/stressevent/dwarfshaved
	timer = 40 MINUTES
	stressadd = 6
	desc = span_boldred("Prefiero cortarme la garganta antes que la barba.")

/datum/stressevent/viewdismember
	timer = 15 MINUTES
	max_stacks = 5
	stressadd = 2
	stressadd_per_extra_stack = 2
	desc = span_red("Carniceria.")

/datum/stressevent/fviewdismember
	timer = 1 MINUTES
	max_stacks = 10
	stressadd = 1
	stressadd_per_extra_stack = 1
	desc = span_red("He visto algo horrible!")

/datum/stressevent/viewgib
	timer = 5 MINUTES
	stressadd = 2
	desc = span_red("He visto algo espantoso.")

/datum/stressevent/bleeding
	timer = 2 MINUTES
	stressadd = 2
	desc = list(span_red("Creo que estoy sangrando."),span_red("Estoy sangrando."))

/datum/stressevent/bleeding/can_apply(mob/living/user)
	if(user.has_flaw(/datum/charflaw/masochist))
		return FALSE
	return TRUE

/datum/stressevent/painmax
	timer = 1 MINUTES
	stressadd = 2
	desc = span_red("EL DOLOR!")

/datum/stressevent/painmax/can_apply(mob/living/user)
	if(user.has_flaw(/datum/charflaw/masochist))
		return FALSE
	return TRUE

/datum/stressevent/freakout
	timer = 15 SECONDS
	stressadd = 2
	desc = span_red("Estoy entrando en panico!")

/datum/stressevent/felldown
	timer = 1 MINUTES
	stressadd = 1
	desc = span_red("Me he caido. Soy un idiota.")

/datum/stressevent/burntmeal
	timer = 2 MINUTES
	stressadd = 2
	desc = span_red("PUAG!")

/datum/stressevent/rotfood
	timer = 2 MINUTES
	stressadd = 4
	desc = span_red("PUAG!")

/datum/stressevent/psycurse
	timer = 5 MINUTES
	stressadd = 5
	desc = span_boldred("Oh no! He recibido un castigo divino!")

/datum/stressevent/virginchurch
	timer = 999 MINUTES
	stressadd = 10
	desc = span_boldred("He roto mi juramento de castidad a los Dioses.!")

/datum/stressevent/badmeal
	timer = 3 MINUTES
	stressadd = 2
	desc = span_red("Tiene un sabor REPUGNANTE!")

/datum/stressevent/vomit
	timer = 3 MINUTES
	stressadd = 2
	max_stacks = 3
	stressadd_per_extra_stack = 2
	desc = span_red("He vomitado!")

/datum/stressevent/vomitself
	timer = 3 MINUTES
	stressadd = 2
	max_stacks = 3
	stressadd_per_extra_stack = 2
	desc = span_red("He vomitado sobre mi mismo!")

/datum/stressevent/cumbad
	timer = 5 MINUTES
	stressadd = 5
	desc = span_boldred("Me han violado.")

/datum/stressevent/cumcorpse
	timer = 1 MINUTES
	stressadd = 10
	desc = span_boldred("Que coño he hecho?")

/datum/stressevent/blueb
	timer = 1 MINUTES
	stressadd = 2
	desc = span_red("Me duelen los huevos!")

/datum/stressevent/shunned_race
	timer = 1 MINUTES
	stressadd = 1
	desc = span_red("Mejor me mantengo alejado de esa 'raza'.")

/datum/stressevent/shunned_race_xenophobic
	timer = 2 MINUTES
	stressadd = 5
	desc = span_red("Mejor me mantengo alejado de ese ser inferior.")

/datum/stressevent/paracrowd
	timer = 15 SECONDS
	stressadd = 2
	desc = span_red("Aqui hay demasiada gente que no se parece a mi.")

/datum/stressevent/parablood
	timer = 15 SECONDS
	stressadd = 3
	desc = span_red("Hay tanta sangre aqui.. Es como un campo de batalla!")

/datum/stressevent/parastr
	timer = 2 MINUTES
	stressadd = 2
	desc = span_red("La bestia es mas fuerte.. Y puede matarme facilmente!")

/datum/stressevent/paratalk
	timer = 2 MINUTES
	stressadd = 2
	desc = span_red("Estan conspirando contra mi en lenguas malvadas..")

/datum/stressevent/crowd
	timer = 2 MINUTES
	stressadd = 2
	desc = "<span class='red'>Por que todos los de aqui...? Tratan de matarme?!</span>"

/datum/stressevent/nopeople
	timer = 2 MINUTES
	stressadd = 2
	desc = "<span class='red'>D-Donde se fueron todos? Ha pasado algo?!</span>"

/datum/stressevent/jesterphobia
	timer = 4 MINUTES
	stressadd = 5
	desc = span_boldred("NO! ALEJA A ESE BUFON DE MI, AYUDA!!")

/datum/stressevent/coldhead
	timer = 60 SECONDS
	stressadd = 1
	desc = span_red("Mi cabeza es fria y fea.")

/datum/stressevent/sleepytime
	timer = 40 MINUTES
	stressadd = 2
	desc = span_red("Estoy cansado.")

/datum/stressevent/tortured
	stressadd = 3
	max_stacks = 5
	stressadd_per_extra_stack = 2
	desc = span_boldred("Estoy roto por dentro.")
	timer = 60 SECONDS

/datum/stressevent/confessed
	stressadd = 3
	desc = span_red("He confesado un pecado.")
	timer = 15 MINUTES

/datum/stressevent/confessedgood
	stressadd = 1
	desc = span_red("He confesado un pecado, se siente bien.")
	timer = 15 MINUTES

/datum/stressevent/saw_wonder
	stressadd = 4
	desc = span_boldred("<B>He visto algo horrible, y temo por mi vida!</B>")
	timer = 999 MINUTES

/datum/stressevent/maniac_woke_up
	stressadd = 10
	desc = span_boldred("No... Quiero volver...")
	timer = 999 MINUTES

/datum/stressevent/drankrat
	stressadd = 1
	desc = span_red("He bebido de una criatura inferior.")
	timer = 1 MINUTES

/datum/stressevent/lowvampire
	stressadd = 1
	desc = span_red("Estoy muerto... Que viene despues?")

/datum/stressevent/oziumoff
	stressadd = 10
	desc = span_blue("Necesito otra dosis.")
	timer = 1 MINUTES

/datum/stressevent/puzzle_fail
	stressadd = 1
	desc = list(span_red("He malgastado mi vida en esa puta caja."),span_red("Maldita seas, caja!."))
	timer = 5 MINUTES
