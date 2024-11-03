
/mob/living/carbon/human
	var/datum/charflaw/charflaw

/mob/proc/sate_addiction()
	return

/mob/living/carbon/human/sate_addiction()
	if(istype(charflaw, /datum/charflaw/addiction))
		var/datum/charflaw/addiction/A = charflaw
		if(!A.sated)
			to_chat(src, span_blue(A.sated_text))
		A.sated = TRUE
		A.time = initial(A.time) //reset roundstart sate offset to standard
		A.next_sate = world.time + A.time
		remove_stress(/datum/stressevent/vice)
		if(A.debuff)
			remove_status_effect(A.debuff)

/datum/charflaw/addiction
	var/next_sate = 0
	var/sated = TRUE
	var/time = 5 MINUTES
//	var/debuff = /datum/status_effect/debuff/addiction
	var/debuff //so heroin junkies can have big problems
	var/needsate_text
	var/sated_text = "Eso esta mucho mejor..."
	var/unsate_time


/datum/charflaw/addiction/New()
	..()
	time = rand(6 MINUTES, 30 MINUTES)
	next_sate = world.time + time

/datum/charflaw/addiction/flaw_on_life(mob/user)
	if(!ishuman(user))
		return
	if(user.mind.antag_datums)
		for(var/datum/antagonist/D in user.mind.antag_datums)
			if(istype(D, /datum/antagonist/vampirelord) || istype(D, /datum/antagonist/werewolf) || istype(D, /datum/antagonist/skeleton) || istype(D, /datum/antagonist/zombie) || istype(D, /datum/antagonist/lich))
				return
	var/mob/living/carbon/human/H = user
	var/oldsated = sated
	if(oldsated)
		if(next_sate)
			if(world.time > next_sate)
				sated = FALSE
	if(sated != oldsated)
		unsate_time = world.time
		if(needsate_text)
			to_chat(user, span_boldwarning("[needsate_text]"))
	if(!sated)
		H.add_stress(/datum/stressevent/vice)
		if(debuff)
			H.apply_status_effect(debuff)



/datum/status_effect/debuff/addiction
	id = "addiction"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/addiction
	effectedstats = list("endurance" = -1,"fortune" = -1)
	duration = 100


/atom/movable/screen/alert/status_effect/debuff/addiction
	name = "Addiction"
	desc = ""
	icon_state = "debuff"


/// ALCOHOLIC

/datum/charflaw/addiction/alcoholic
	name = "Alcoholico"
	desc = "Beber alcohol es mi cosa favorita."
	time = 40 MINUTES
	needsate_text = "Hora de beber."


/// JUNKIE

/datum/charflaw/addiction/junkie
	name = "Yonki"
	desc = "Necesito un COLOCON de verdad para alejarme del dolor de este mundo."
	time = 40 MINUTES
	needsate_text = "Hora de colocarme."

/// Smoker

/datum/charflaw/addiction/smoker
	name = "Fumador"
	desc = "Necesito fumar algo para quitarme el estres."
	time = 40 MINUTES
	needsate_text = "Hora de echarse un cigarrillo."

/// GOD-FEARING

/datum/charflaw/addiction/godfearing
	name = "Seguidor Devoto"
	desc = "Necesito seguir a mi patron, sus bendiciones seran mas fuertes."
	time = 40 MINUTES
	needsate_text = "Es hora de rezar."

/// SADIST

/datum/charflaw/addiction/sadist
	name = "Sadico"
	desc = "No hay mayor placer que el dolor de otra persona."
	time = 40 MINUTES
	needsate_text = "Necesito escuchar a alguien sufrir."
