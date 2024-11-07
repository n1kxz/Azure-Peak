GLOBAL_LIST_EMPTY(outlawed_players)
GLOBAL_LIST_EMPTY(lord_decrees)
GLOBAL_LIST_INIT(laws_of_the_land, initialize_laws_of_the_land())

/proc/initialize_laws_of_the_land()
	var/list/laws = strings("laws_of_the_land.json", "lawsets")
	var/list/lawsets_weighted = list()
	for(var/lawset_name as anything in laws)
		var/list/lawset = laws[lawset_name]
		lawsets_weighted[lawset_name] = lawset["weight"]
	var/chosen_lawset = pickweight(lawsets_weighted)
	return laws[chosen_lawset]["laws"]

/obj/structure/roguemachine/titan
	name = "trono"
	desc = "Quien lleve la corona, poseera la llave a esta extraña cosa. Si todo falla, solo teneis que exclamar \"secretos del trono\""
	icon = 'icons/roguetown/misc/machines.dmi'
	icon_state = ""
	density = FALSE
	blade_dulling = DULLING_BASH
	integrity_failure = 0.5
	max_integrity = 0
	flags_1 = HEAR_1
	anchored = TRUE
	var/mode = 0


/obj/structure/roguemachine/titan/obj_break(damage_flag)
	..()
	cut_overlays()
//	icon_state = "[icon_state]-br"
	set_light(0)
	return

/obj/structure/roguemachine/titan/Destroy()
	set_light(0)
	..()

/obj/structure/roguemachine/titan/Initialize()
	. = ..()
	icon_state = null
//	var/mutable_appearance/eye_lights = mutable_appearance(icon, "titan-eyes")
//	eye_lights.plane = ABOVE_LIGHTING_PLANE //glowy eyes
//	eye_lights.layer = ABOVE_LIGHTING_LAYER
//	add_overlay(eye_lights)
	set_light(5)

/obj/structure/roguemachine/titan/Hear(message, atom/movable/speaker, message_language, raw_message, radio_freq, list/spans, message_mode, message)
//	. = ..()
	if(speaker == src)
		return
	if(speaker.loc != loc)
		return
	if(obj_broken)
		return
	if(!ishuman(speaker))
		return
	var/mob/living/carbon/human/H = speaker
	var/nocrown
	if(!istype(H.head, /obj/item/clothing/head/roguetown/crown/serpcrown))
		nocrown = TRUE
	var/notlord
	if(SSticker.rulermob != H)
		notlord = TRUE

	if(mode)
		if(findtext(message, "olvidalo"))
			mode = 0
			return
	if(findtext(message, "invocar corona")) //This must never fail, thus place it before all other modestuffs.
		if(!SSroguemachine.crown)
			new /obj/item/clothing/head/roguetown/crown/serpcrown(src.loc)
			say("La corona ha sido invocada!")
			playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
			playsound(src, 'sound/misc/hiss.ogg', 100, FALSE, -1)
		if(SSroguemachine.crown)
			var/obj/item/clothing/head/roguetown/crown/serpcrown/I = SSroguemachine.crown
			if(!I)
				I = new /obj/item/clothing/head/roguetown/crown/serpcrown(src.loc)
			if(I && !ismob(I.loc))//You MUST MUST MUST keep the Crown on a person to prevent it from being summoned (magical interference)
				I.anti_stall()
				I = new /obj/item/clothing/head/roguetown/crown/serpcrown(src.loc)
				say("La corona ha sido invocada!")
				playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
				playsound(src, 'sound/misc/hiss.ogg', 100, FALSE, -1)
				return
			if(ishuman(I.loc))
				var/mob/living/carbon/human/HC = I.loc
				if(HC.stat != DEAD)
					if(I in HC.held_items)
						say("[HC.real_name] sostiene la corona!")
						playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
						return
					if(H.head == I)
						say("[HC.real_name] lleva puesta la corona!")
						playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
						return
				else
					HC.dropItemToGround(I, TRUE) //If you're dead, forcedrop it, then move it.
			I.forceMove(src.loc)
			say("La corona ha sido invocada!")
			playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
			playsound(src, 'sound/misc/hiss.ogg', 100, FALSE, -1)
	if(findtext(message, "invocar llave"))
		if(nocrown)
			say("Necesitas tener la corona.")
			playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
			return
		if(!SSroguemachine.key)
			new /obj/item/roguekey/lord(src.loc)
			say("La llave maestra ha sido invocada!")
			playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
			playsound(src, 'sound/misc/hiss.ogg', 100, FALSE, -1)
		if(SSroguemachine.key)
			var/obj/item/roguekey/lord/I = SSroguemachine.key
			if(!I)
				I = new /obj/item/roguekey/lord(src.loc)
			if(I && !ismob(I.loc))
				I.anti_stall()
				I = new /obj/item/roguekey/lord(src.loc)
				say("La llave maestra ha sido invocada!")
				playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
				playsound(src, 'sound/misc/hiss.ogg', 100, FALSE, -1)
				return
			if(ishuman(I.loc))
				var/mob/living/carbon/human/HC = I.loc
				if(HC.stat != DEAD)
					say("[HC.real_name] sostiene la llave!")
					playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
					return
				else
					HC.dropItemToGround(I, TRUE) //If you're dead, forcedrop it, then move it.
			I.forceMove(src.loc)
			say("La llave  maestra ha sido invocada!")
			playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
			playsound(src, 'sound/misc/hiss.ogg', 100, FALSE, -1)
	switch(mode)
		if(0)
			if(findtext(message, "secretos del trono"))
				say("Mis comandos son: Establecer Decreto, Realizar Anuncio, Establecer Impuestos, Declarar Fugitivo, Invocar Corona, Invocar Llave, Crear Ley, Remover Ley, Purgar Leyes, Olvidalo")
				playsound(src, 'sound/misc/machinelong.ogg', 100, FALSE, -1)
			if(findtext(message, "realizar anuncio"))
				if(nocrown)
					say("Necesitas tener la corona.")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				if(!SScommunications.can_announce(H))
					say("Debo recomponer mis fuerzas!")
					return
				say("Habla, y ellos te obedeceran.")
				playsound(src, 'sound/misc/machineyes.ogg', 100, FALSE, -1)
				mode = 1
				return
			if(findtext(message, "establecer decreto"))
				if(!SScommunications.can_announce(H))
					say("Debo recomponer mis fuerzas!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				if(notlord || nocrown)
					say("Tu no eres mi maestro!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				say("Habla, y ellos te obedeceran.")
				playsound(src, 'sound/misc/machineyes.ogg', 100, FALSE, -1)
				mode = 2
				return
			if(findtext(message, "crear ley"))
				if(!SScommunications.can_announce(H))
					say("Debo recomponer mis fuerzas!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				if(notlord || nocrown)
					say("Tu no eres mi maestro!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				say("Habla, y ellos te obedeceran.")
				playsound(src, 'sound/misc/machineyes.ogg', 100, FALSE, -1)
				mode = 4
				return
			if(findtext(message, "remover ley"))
				if(!SScommunications.can_announce(H))
					say("Debo recomponer mis fuerzas!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				if(notlord || nocrown)
					say("Tu no eres mi maestro!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				var/message_clean = replacetext(message, "remover ley", "")
				var/law_index = text2num(message_clean) || 0
				if(!law_index || !GLOB.laws_of_the_land[law_index])
					say("Esa ley no existe!")
					return
				say("Esa ley debera ser eliminada!")
				playsound(src, 'sound/misc/machineyes.ogg', 100, FALSE, -1)
				remove_law(law_index)
				return
			if(findtext(message, "purgar leyes"))
				if(!SScommunications.can_announce(H))
					say("Debo recomponer mis fuerzas!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				if(notlord || nocrown)
					say("Tu no eres mi maestro!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				say("Todas las leyes deberan ser purgadas!")
				playsound(src, 'sound/misc/machineyes.ogg', 100, FALSE, -1)
				purge_laws()
				return
			if(findtext(message, "declarar fugitivo"))
				if(notlord || nocrown)
					say("Tu no eres mi maestro!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				say("Quien deberia ser perseguido?")
				playsound(src, 'sound/misc/machinequestion.ogg', 100, FALSE, -1)
				mode = 3
				return
			if(findtext(message, "establecer impuestos"))
				if(notlord || nocrown)
					say("Tu no eres mi maestro!")
					playsound(src, 'sound/misc/machineno.ogg', 100, FALSE, -1)
					return
				say("El nuevo porcentaje de impuestos debera ser...")
				playsound(src, 'sound/misc/machinetalk.ogg', 100, FALSE, -1)
				give_tax_popup(H)
				return
		if(1)
			make_announcement(H, raw_message)
			mode = 0
		if(2)
			make_decree(H, raw_message)
			mode = 0
		if(3)
			declare_outlaw(H, message)
			mode = 0
		if(4)
			if(!SScommunications.can_announce(speaker))
				return
			make_law(raw_message)
			mode = 0

/obj/structure/roguemachine/titan/proc/give_tax_popup(mob/living/carbon/human/user)
	if(!Adjacent(user))
		return
	var/newtax = input(user, "Establecer nuevo porcentaje de impuesto (1-99)", src, SStreasury.tax_value*100) as null|num
	if(newtax)
		if(!Adjacent(user))
			return
		if(findtext(num2text(newtax), "."))
			return
		newtax = CLAMP(newtax, 1, 99)
		SStreasury.tax_value = newtax / 100
		priority_announce("El nuevo impuesto en Azure Peak debera ser del [newtax] porciento.", "El Generoso Duque Establece", pick('sound/misc/royal_decree.ogg', 'sound/misc/royal_decree2.ogg'), "Captain")



/obj/structure/roguemachine/titan/proc/make_announcement(mob/living/user, raw_message)
	if(!SScommunications.can_announce(user))
		return
	try_make_rebel_decree(user)

	SScommunications.make_announcement(user, FALSE, raw_message)

/obj/structure/roguemachine/titan/proc/try_make_rebel_decree(mob/living/user)
	var/datum/antagonist/prebel/P = user.mind?.has_antag_datum(/datum/antagonist/prebel)
	if(!P)
		return
	var/datum/game_mode/chaosmode/C = SSticker.mode
	if(!istype(C))
		return
	if(!P.rev_team)
		return
	if(P.rev_team.members.len < 3)
		to_chat(user, span_warning("Necesito a mas aliados a mi lado antes de declarar mi victoria."))
		return
	var/obj/structure/roguethrone/throne = GLOB.king_throne
	if(throne == null)
		return
	if(throne.rebel_leader_sit_time < REBEL_THRONE_TIME)
		to_chat(user, span_warning("Necesito ponerme mas comodo en el trono antes de poder declarar mi victoria."))
		return
	for(var/datum/objective/prebel/obj in user.mind.get_all_objectives())
		obj.completed = TRUE
	if(!C.headrebdecree)
		user.mind.adjust_triumphs(1)
	C.headrebdecree = TRUE

/obj/structure/roguemachine/titan/proc/make_decree(mob/living/user, raw_message)
	if(!SScommunications.can_announce(user))
		return

	GLOB.lord_decrees += raw_message
	try_make_rebel_decree(user)

	SScommunications.make_announcement(user, TRUE, raw_message)

/obj/structure/roguemachine/titan/proc/declare_outlaw(mob/living/user, raw_message)
	if(!SScommunications.can_announce(user))
		return
	if(user.job)
		if(!istype(SSjob.GetJob(user.job), /datum/job/roguetown/lord))
			return
	else
		return
	return make_outlaw(raw_message)

/proc/make_outlaw(raw_message)
	if(raw_message in GLOB.outlawed_players)
		GLOB.outlawed_players -= raw_message
		priority_announce("[raw_message] ya no es un fugitivo en Azure Peak.", "El Duque Decreta", 'sound/misc/royal_decree.ogg', "Captain")
		return FALSE
	var/found = FALSE
	for(var/mob/living/carbon/human/H in GLOB.player_list)
		if(H.real_name == raw_message)
			found = TRUE
	if(!found)
		return FALSE
	GLOB.outlawed_players += raw_message
	priority_announce("[raw_message] ha sido declarado un fugitivo, debera ser capturado o ejecutado.", "El Duque Decreta", 'sound/misc/royal_decree2.ogg', "Captain")
	return TRUE

/proc/make_law(raw_message)
	GLOB.laws_of_the_land += raw_message
	priority_announce("[length(GLOB.laws_of_the_land)]. [raw_message]", "UNA LEY ES ESTABLECIDA", pick('sound/misc/new_law.ogg', 'sound/misc/new_law2.ogg'), "Captain")

/proc/remove_law(law_index)
	if(!GLOB.laws_of_the_land[law_index])
		return
	var/law_text = GLOB.laws_of_the_land[law_index]
	GLOB.laws_of_the_land -= law_text
	priority_announce("[law_index]. [law_text]", "UNA LEY ES ABOLIDA", pick('sound/misc/new_law.ogg', 'sound/misc/new_law2.ogg'), "Captain")

/proc/purge_laws()
	GLOB.laws_of_the_land = list()
	priority_announce("Todas las leyes en estas tierras han sido purgadas!", "LEYES PURGADAS", 'sound/misc/lawspurged.ogg', "Captain")
