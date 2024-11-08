/datum/stressevent/vice
	timer = 5 MINUTES
	stressadd = 5
	desc = list(span_boldred("No cedo a mis vicios."),span_boldred("Necesito satisfacer mis deseos."))

/datum/stressevent/miasmagas
	timer = 10 SECONDS
	stressadd = 2
	desc = span_red("Apesta a muerto aqui.")

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
	desc = span_red("Siento un poco de sed.")

/datum/stressevent/thirst
	timer = 10 MINUTES
	stressadd = 3
	desc = span_red("Estoy sediento.")

/datum/stressevent/parched
	timer = 10 MINUTES
	stressadd = 5
	desc = span_boldred("Me voy a morir de sed.")

/datum/stressevent/dismembered
	timer = 40 MINUTES
	stressadd = 5
	desc = list(span_boldred("Me han amputado un miembro."),span_boldred("He perdido un miembro."))

/datum/stressevent/dwarfshaved
	timer = 40 MINUTES
	stressadd = 6
	desc = span_boldred("Preferiria cortarme la garganta antes que la barba.")

/datum/stressevent/viewdismember
	timer = 15 MINUTES
	max_stacks = 5
	stressadd = 2
	stressadd_per_extra_stack = 2
	desc = list(span_red("Carniceria."),span_red("Desmembramiento.") )

/datum/stressevent/fviewdismember
	timer = 1 MINUTES
	max_stacks = 10
	stressadd = 1
	stressadd_per_extra_stack = 1
	desc = list(span_red("He visto algo horrible!"),span_red("He visto algo espantoso."),span_red("Vi algo abominable"))

/datum/stressevent/viewgib
	timer = 5 MINUTES
	stressadd = 2
	desc = list(span_red("He visto algo horrible!"),span_red("He visto algo espantoso."),span_red("Vi algo abominable"))

/datum/stressevent/bleeding
	timer = 2 MINUTES
	stressadd = 2
	desc = list(span_red("Creo que estoy sangrando."),span_red("Estoy sangrando..."),span_red("Estoy perdiendo sangre..."))

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
	desc = list(span_red("Me he caido. Soy un idiota."),span_red("Me cai. Soy un necio."))

/datum/stressevent/burntmeal
	timer = 2 MINUTES
	stressadd = 2
	desc = list(span_red("PUAG!"),span_red("¡QUe ASCO!"))

/datum/stressevent/rotfood
	timer = 2 MINUTES
	stressadd = 4
	desc = list(span_red("PUAG!"),span_red("¡QUe ASCO!"))

/datum/stressevent/psycurse
	timer = 5 MINUTES
	stressadd = 5
	desc = list(span_boldred("Oh no! He recibido un castigo divino!"),span_boldred("¡Ay pobre de mi! ¡He sido maldecido por los dioses!"))

/datum/stressevent/virginchurch
	timer = 999 MINUTES
	stressadd = 10
	desc = list(span_boldred("He roto mi juramento de castidad a los Dioses.!"),span_boldred("¡He quebrantado mi voto de castidad ante los dioses!"),span:boldred("¡He roto mi voto de castidad a los dioses!"),span:boldred("SOY UN SUCIO EREPERO"))

/datum/stressevent/badmeal
	timer = 3 MINUTES
	stressadd = 2
	desc = list(span_red("Tiene un sabor REPUGNANTE!"),span_red("¡Sabe HORRIBLE!"))

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
	desc = list(span_red("He vomitado sobre mi mismo!"),span_red("¡Me he vomitado encima!"))

/datum/stressevent/cumbad
	timer = 5 MINUTES
	stressadd = 5
	desc = list(span_boldred("Me han violado."),span_boldred("Fui ultrajado..."))

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
	desc = list(span_red("La bestia es mas fuerte.. Y puede matarme facilmente!"),span_red("Esa bestia es mas fuerte... y podria matarme facilmente."))

/datum/stressevent/paratalk
	timer = 2 MINUTES
	stressadd = 2
	desc = list(span_red("Estan conspirando contra mi en lenguas malvadas.."),span_red("Estan conspirando contra mi en lenguas perfidas..."))

/datum/stressevent/crowd
	timer = 2 MINUTES
	stressadd = 2
	desc = list(("<span class='red'>Por que todos los de aqui...? Tratan de matarme?!</span>"),("<span class='red'>Por que esta todo el mundo aqui...? ¿Intentan matarme?!</span>"),("<span class='red'>¿Por qué estan todos aquí? ¿Acaso pretenden asesinarme? ¿Intentan matarme?!</span>"),("<span class='red'>¿¡Están intentando matarme!?</span>"))

/datum/stressevent/nopeople
	timer = 2 MINUTES
	stressadd = 2
	desc = list(("<span class='red'>D-Donde se fueron todos? Ha pasado algo?!</span>"),("<span class='red'>D-Donde se ha ido toda la gente? ¿Habrá acontecido algún desastre?!</span>"),("<span class='red'>N-no hay nadie? Que habra sucedido.....?</span>"))

/datum/stressevent/jesterphobia
	timer = 4 MINUTES
	stressadd = 5
	desc = list(span_boldred("NO! ALEJA A ESE BUFON DE MI, AYUDA!!"),span_boldred("¡No! ¡Alejad al Bufon de mí!"),span_boldred("¡No! ¡Apartad al Bufon de mi presencia!"),span_boldred("¡Retirad ese Bufon, alejadlo de mi!"))

/datum/stressevent/coldhead
	timer = 60 SECONDS
	stressadd = 1
	desc = list(span_red("Mi cabeza es fria y fea."),span_red("Mi cabeza esta fria y fea..."),span_red("Mi testa esta fria y horrenda."),span_red("Mi cabeza esta helada y desgarbada."))

/datum/stressevent/sleepytime
	timer = 40 MINUTES
	stressadd = 2
	desc = list(span_red("Estoy cansado."),span_red("Estoy fatigado."),span_red("Siento el peso del cansancio."))

/datum/stressevent/tortured
	stressadd = 3
	max_stacks = 5
	stressadd_per_extra_stack = 2
	desc = list(span_boldred("Estoy roto por dentro."),span_boldred("Mi ser esta destrozado."))
	timer = 60 SECONDS

/datum/stressevent/confessed
	stressadd = 3
	desc = list(span_red("He confesado un pecado."),span_red("He confesado mis pecados."),span_red("He revelado mis transgresiones."))
	timer = 15 MINUTES

/datum/stressevent/confessedgood
	stressadd = 1
	desc = list(span_red("He confesado un pecado, se siente bien."),span_red("He confesado mis pecados y me siento aliviado"),span_red("Al confesar mis pecados, siento una cierta ligereza en mi alma."))
	timer = 15 MINUTES

/datum/stressevent/saw_wonder
	stressadd = 4
	desc = list(span_boldred("<B>He visto algo horrible, y temo por mi vida!</B>"),span_boldred("He visto algo de pesadilla, y temo por mi vida."),span_boldred("He presenciado una vision de pesadilla y temo por mi vida."),span_boldred("Vi una escena espantosa y temo por mi existencia."))
	timer = 999 MINUTES

/datum/stressevent/maniac_woke_up
	stressadd = 10
	desc = list(span_boldred("No... Quiero volver..."),span_boldred("No... Deseo regresar..."))
	timer = 999 MINUTES

/datum/stressevent/drankrat
	stressadd = 1
	desc = span_red("He bebido de una criatura inferior.")
	timer = 1 MINUTES

/datum/stressevent/lowvampire
	stressadd = 1
	desc = list(span_red("Estoy muerto... Que viene despues?"),span_red("Estoy muerto... ¿Qué será de mí ahora?"),span_red("Qué es lo que sigue tras mi muerte?"))

/datum/stressevent/oziumoff
	stressadd = 10
	desc = span_blue("Necesito otra dosis.")
	timer = 1 MINUTES

/datum/stressevent/puzzle_fail
	stressadd = 1
	desc = list(span_red("He malgastado mi vida en esa puta caja."),span_red("Maldita seas, caja!."),span_red("Perdi mi tiempo en esa caja tonta... Maldita caja de bufon."),span_red("Desperdicie mi tiempo en esa caja estupida."),span_red("He desperdiciado mi tiempo en esa caja de mierda"))
	timer = 5 MINUTES

datum/stressevent/noble_impoverished_food
	stressadd = 3
	desc = span_boldred("Que repugnante. ¿Quién sería capaz de comer esto...?")
	timer = 10 MINUTES

/datum/stressevent/noble_desperate
	stressadd = 6
	desc = span_boldred("¿Hasta que punto de desesperación he llegado?")
	timer = 60 MINUTES

/datum/stressevent/noble_bland_food
	stressadd = 2
	desc = span_red("Esta comida es realmente insipida, no esta a mi nivel. Yo merezco algo mejor...")
	timer = 5 MINUTES

/datum/stressevent/noble_bad_manners
	stressadd = 1
	desc = span_red("Deberia haber usado una cuchara...")
	timer = 5 MINUTES

/datum/stressevent/noble_ate_without_table
	stressadd = 1
	desc = span_red("¡Comer una comida asi sin mesa...? Vaya vulgaridad.")
	timer = 2 MINUTES
