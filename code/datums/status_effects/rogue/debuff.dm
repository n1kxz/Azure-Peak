/datum/status_effect/debuff
	status_type = STATUS_EFFECT_REFRESH

///////////////////////////

/datum/status_effect/debuff/hungryt1
	id = "hungryt1"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/hungryt1
	effectedstats = list("constitution" = -1)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/hungryt1
	name = "Hambre"
	desc = "El hambre debilita el cuerpo."
	icon_state = "hunger1"

/datum/status_effect/debuff/hungryt2
	id = "hungryt2"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/hungryt2
	effectedstats = list("strength" = -2, "constitution" = -2, "endurance" = -1)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/hungryt2
	name = "Hambriento"
	desc = "Este cuerpo viviente sufre de los efectos de la inanicion."
	icon_state = "hunger2"

/datum/status_effect/debuff/hungryt3
	id = "hungryt3"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/hungryt3
	effectedstats = list("strength" = -5, "constitution" = -3, "endurance" = -2)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/hungryt3
	name = "Inanicion"
	desc = "Te estas muriendo de hambre, literalmente."
	icon_state = "hunger3"

//SILVER DAGGER EFFECT

/datum/status_effect/debuff/silver_curse
	id = "silver_curse"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/silver_curse
	effectedstats = list("strength" = -2,"perception" = -2,"intelligence" = -2, "constitution" = -2, "endurance" = -2,"speed" = -2)
	duration = 45 SECONDS

/atom/movable/screen/alert/status_effect/debuff/silver_curse
	name = "Maldicion De Plata"
	desc = "Mi debilitud!"
	icon_state = "hunger3"

////////////////////


/datum/status_effect/debuff/thirstyt1
	id = "thirsty1"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/thirstyt1
	effectedstats = list("endurance" = -1)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/thirstyt1
	name = "Algo de sed"
	desc = "Necesito agua."
	icon_state = "thirst1"

/datum/status_effect/debuff/thirstyt2
	id = "thirsty2"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/thirstyt2
	effectedstats = list("speed" = -1, "endurance" = -2)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/thirstyt2
	name = "Sediento"
	desc = "Mi boca se siente bastante seca."
	icon_state = "thirst2"

/datum/status_effect/debuff/thirstyt3
	id = "thirsty3"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/thirstyt3
	effectedstats = list("strength" = -1, "speed" = -2, "endurance" = -3)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/thirstyt3
	name = "Deshidratacion"
	desc = "Necesito agua de forma urgente!"
	icon_state = "thirst3"

/////////

/datum/status_effect/debuff/uncookedfood
	id = "uncookedfood"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/uncookedfood/on_apply()
	if(HAS_TRAIT(owner, TRAIT_NASTY_EATER) || HAS_TRAIT(owner, TRAIT_ORGAN_EATER) || HAS_TRAIT(owner, TRAIT_WILD_EATER))
		return ..()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_nausea(100)
	return ..()

/datum/status_effect/debuff/badmeal
	id = "badmeal"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/badmeal/on_apply()
	owner.add_stress(/datum/stressevent/badmeal)
	return ..()

/datum/status_effect/debuff/burnedfood
	id = "burnedfood"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/burnedfood/on_apply()
	if(HAS_TRAIT(owner, TRAIT_NASTY_EATER))
		return ..()
	owner.add_stress(/datum/stressevent/burntmeal)
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_nausea(100)
	return ..()

/datum/status_effect/debuff/rotfood
	id = "rotfood"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/rotfood/on_apply()
	if(HAS_TRAIT(owner, TRAIT_NASTY_EATER) || HAS_TRAIT(owner, TRAIT_ROT_EATER))
		return ..()
	owner.add_stress(/datum/stressevent/rotfood)
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_nausea(200)
	return ..()

/datum/status_effect/debuff/bleeding
	id = "bleedingt1"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/bleedingt1
	effectedstats = list("speed" = -1)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/bleedingt1
	name = "Mareado"
	desc = ""
	icon_state = "bleed1"

/datum/status_effect/debuff/bleedingworse
	id = "bleedingt2"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/bleedingt2
	effectedstats = list("strength" = -1, "speed" = -2)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/bleedingt2
	name = "Debil"
	desc = ""
	icon_state = "bleed2"

/datum/status_effect/debuff/bleedingworst
	id = "bleedingt3"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/bleedingt3
	effectedstats = list("strength" = -3, "speed" = -4)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/bleedingt3
	name = "Drenado"
	desc = ""
	icon_state = "bleed3"

/datum/status_effect/debuff/sleepytime
	id = "sleepytime"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/sleepytime

/atom/movable/screen/alert/status_effect/debuff/sleepytime
	name = "Cansado"
	desc = "Deberia de irme a dormir." //Como yo, son las 6:37, es 2/11/2024. Y llevo dos dias sin dormir, y como no queda mas que hacer solo me dedico a codear y codear hasta que me reviente una puta encema del cerebro y los liquidos que mantienen el pensamiento humano se rebocen por las grietas de mi craneo llenado el cuarto con mi esencia cerebral, es un poco asi como va esta mierda supongo, total ya no se ni que escribo, me he quedado pensando por que estoy escuchando musica de ascensor para ver si me entra algo de sueño y me he quedado embobado con la letra de la cancion asi que no se me ocurre que poner en la siguiente traduccion, solo estoy divagando y divagando hasta que salga la puta siguiente cancion. La verdad es que llevo un dia de mierda, yo queria hacer algo por halloween pero entre el cansancio y que no hay nada por mi pueblo pues no he hecho nada, lo que hice por halloween es codear el erp fix que a dia de hoy, a las 6:41 am del 2/11/24 no esta aceptado. Lo gracioso es que la update de no erp no funciona sin ese parche, dije que se me habia olvidado pero realmente es que soy tan putamente inepto e inultil que al final se me olvido incluir comentar la funcion que hace que al arrastrar MMD hacia un player te abra el erp panel, entonces lo que borre fue solo lo que te pedia consentimiento para abrir el panel, convirtiendo asi la erp update en la rape update. Y esa es la analogia de mi vida, intento cambiar cosas pero no puedo y acabo convirtiendolas en lo que estaba intentando que no fueran, solo codeo por que ya no se que hacer conmigo, no tengo amigos, tampoco una relacion muy buena con mi familia. Y miento, si tengo "un" amigo, el resto me han dejado de lado por que soy un alcoholico y siempre me pongo intrusivo y agresivo con ellos cuando bebo. No me queda nada mas que hacer salvo codear para este server de mierda que probablemente morira en dos meses. Cuanto mas me doy cuenta de mi situacion creo que me hago mas agresivo por que no puedo lidiar con la realidad de mi existencia, tengo miedo a morir por que creo que lo unico que hay es esta mierda. y lo que ya hay no me gusta asi que lo otro debe de ser peor, o peor que el que sea peor, la nada. si la vida se reduce a esto entonces que sentido tiene que me esfuerce en estas mierdas si de aqui a un año nadie va a usar la mierda de codigo que he hecho para este server por que nadie va a jugar aqui. Solo quiero buscar algo que me distraiga de no pensar en estas cosas, pero ironicamente la unica forma que tengo ahora de expresarme es precisamente la misma cosa que he estado usando para distraerme. Atentamente- Zip.
	icon_state = "sleepy"

/datum/status_effect/debuff/muscle_sore
	id = "muscle_sore"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/muscle_sore
	effectedstats = list("strength" = -1, "endurance" = -1)

/atom/movable/screen/alert/status_effect/debuff/muscle_sore
	name = "Dolor Muscular"
	desc = "Mis musculos necesitan dormir para revitalizarse."
	icon_state = "muscles"

/datum/status_effect/debuff/devitalised
	id = "devitalised"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/devitalised
	effectedstats = list("fortune" = -3)
	duration = 20 MINUTES

/atom/movable/screen/alert/status_effect/debuff/devitalised
	name = "Desvitalizado"
	desc = "Algo ha sido arrancado de mi, y tomara tiempo recuperarse de ello."

/datum/status_effect/debuff/vamp_dreams
	id = "sleepytime"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/vamp_dreams

/atom/movable/screen/alert/status_effect/debuff/vamp_dreams
	name = "Introspectiva"
	desc = "Con algo de sueño en un ataud creo que podre convertirme en mejor persona."
	icon_state = "sleepy"

/// SURRENDERING DEBUFFS

/datum/status_effect/debuff/breedable
	id = "breedable"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/breedable
	duration = 30 SECONDS

/datum/status_effect/debuff/breedable/on_apply()
	. = ..()
	ADD_TRAIT(owner, TRAIT_CRITICAL_RESISTANCE, id)

/datum/status_effect/debuff/breedable/on_remove()
	. = ..()
	REMOVE_TRAIT(owner, TRAIT_CRITICAL_RESISTANCE, id)

/atom/movable/screen/alert/status_effect/debuff/breedable
	name = "Obediente"
	desc = "No me haran mucho daño..."

/datum/status_effect/debuff/submissive
	id = "submissive"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/submissive
	duration = 60 SECONDS

/datum/status_effect/debuff/submissive/on_apply()
	. = ..()
	owner.add_movespeed_modifier("SUBMISSIVE", multiplicative_slowdown = 4)

/datum/status_effect/debuff/submissive/on_remove()
	. = ..()
	owner.remove_movespeed_modifier("SUBMISSIVE")

/atom/movable/screen/alert/status_effect/debuff/submissive
	name = "Sumiso"
	desc = "Seguir la fila es mi unica eleccion."

/datum/status_effect/debuff/chilled
	id = "chilled"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/chilled
	effectedstats = list("speed" = -5, "strength" = -2, "endurance" = -2)
	duration = 15 SECONDS

/atom/movable/screen/alert/status_effect/debuff/chilled
	name = "Enfriado"
	desc = "Casi ni puedo sentir mi cuerpo!"
	icon_state = "chilled"
