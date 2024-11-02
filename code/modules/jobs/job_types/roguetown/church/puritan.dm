/datum/job/roguetown/puritan
	title = "Inquisitor"
	flag = PURITAN
	department_flag = CHURCHMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	allowed_patrons = list(
		/datum/patron/old_god,
		ALL_DIVINE_PATRONS,
	) //gets set to old god.
	tutorial = "Adorais y rindes culto al antiguo dios Psydon, en contraste heretico con la Iglesia de los Diez. Sin embargo, tanto la Corona como la Iglesia han envalentonado a vuestra secta radical. Vuestro fervor os permite erradicar a los cultistas, las malditas bestias nocturnas y otros agentes de la oscuridad mediante vuestra práctica de extraer 'confesiones de pecado' involuntarias. Pero recordad: os toleraran silo mientras tengais un enemigo comun..."
	whitelist_req = TRUE

	outfit = /datum/outfit/job/roguetown/puritan
	display_order = JDO_PURITAN
	give_bank_account = 36
	min_pq = 6 //Only for those bold of spirit, sure of mind, hard of pintle...and should probably know Psydon from Zizo. Not a crucial role, and rather prone to people instigating excessive conflict
	max_pq = null
	round_contrib_points = 2

/datum/job/roguetown/puritan/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(!L.mind)
		return
	if(L.mind.has_antag_datum(/datum/antagonist))
		return
	var/datum/antagonist/new_antag = new /datum/antagonist/purishep()
	L.mind.add_antag_datum(new_antag)

/datum/outfit/job/roguetown/puritan
	name = "Inquisitor"
	jobtype = /datum/job/roguetown/puritan
	allowed_patrons = list(/datum/patron/old_god)

/datum/outfit/job/roguetown/puritan/pre_equip(mob/living/carbon/human/H)
	..()
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/puritan
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/clothing/neck/roguetown/psicross/silver
	shoes = /obj/item/clothing/shoes/roguetown/boots
	pants = /obj/item/clothing/under/roguetown/tights/black
	cloak = /obj/item/clothing/cloak/cape/puritan
	backr = /obj/item/storage/backpack/rogue/satchel/black
	beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
	head = /obj/item/clothing/head/roguetown/puritan
	gloves = /obj/item/clothing/gloves/roguetown/leather
	beltl = /obj/item/rogueweapon/sword/rapier
	backpack_contents = list(/obj/item/storage/keyring/puritan = 1, /obj/item/rogueweapon/huntingknife/idagger/silver)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/tracking, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("endurance", 2)
		H.change_stat("constitution", 3)
		H.change_stat("perception", 3)
		H.change_stat("speed", 1)
		H.change_stat("intelligence", 3)
	H.verbs |= /mob/living/carbon/human/proc/faith_test
	H.verbs |= /mob/living/carbon/human/proc/torture_victim
	ADD_TRAIT(H, TRAIT_NOSEGRAB, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

/mob/living/carbon/human/proc/torture_victim()
	set name = "Extraer Confesion"
	set category = "Inquisition"

	var/obj/item/grabbing/I = get_active_held_item()
	var/mob/living/carbon/human/H
	if(!istype(I) || !ishuman(I.grabbed))
		return
	H = I.grabbed
	if(H == src)
		to_chat(src, span_warning("Ya me torturo a mi mismo."))
		return
	var/painpercent = (H.get_complex_pain() / (H.STAEND * 10)) * 100
	if(H.add_stress(/datum/stressevent/tortured))
		if(!H.stat)
			var/static/list/torture_lines = list(
				"CONFIESA!",
				"DIME TUS SECRETOS!",
				"HABLA!",
				"VAS A HABLAR!",
				"DIMELO!",
				"EL DOLOR SOLO HA COMENZADO, CONFIESA!",
			)
			say(pick(torture_lines), spans = list("torture"))
			if(painpercent >= 100)
				H.emote("painscream")
				H.confession_time("antag")
				return
	to_chat(src, span_warning("No esta listo para hablar."))

/mob/living/carbon/human/proc/faith_test()
	set name = "Comprobar su fe"
	set category = "Inquisition"

	var/obj/item/grabbing/I = get_active_held_item()
	var/mob/living/carbon/human/H
	if(!istype(I) || !ishuman(I.grabbed))
		return
	H = I.grabbed
	if(H == src)
		to_chat(src, span_warning("Ya me torturo a mi mismo."))
		return
	var/painpercent = (H.get_complex_pain() / (H.STAEND * 10)) * 100
	if(H.add_stress(/datum/stressevent/tortured))
		if(!H.stat)
			var/static/list/faith_lines = list(
				"NIEGAS A LOS DIEZ?",
				"QUIEN ES TU DIOS?",
				"ERES FIEL?",
				"QUIEN ES TU PASTOR?",
			)
			say(pick(faith_lines), spans = list("torture"))
			if(painpercent >= 100)
				H.emote("painscream")
				H.confession_time("patron")
				return
	to_chat(src, span_warning("No esta listo para hablar."))

/mob/living/carbon/human/proc/confession_time(confession_type = "antag")
	var/timerid = addtimer(CALLBACK(src, PROC_REF(confess_sins)), 6 SECONDS, TIMER_STOPPABLE)
	var/responsey = alert(src, "Resistir tortura? (1 TRI)", "TORTURA", "Yes","No")
	if(!responsey)
		responsey = "No"
	if(SStimer.timer_id_dict[timerid])
		deltimer(timerid)
	else
		to_chat(src, span_warning("Demasiado tarde..."))
		return
	if(responsey == "Yes")
		adjust_triumphs(-1)
		confess_sins(confession_type, resist = TRUE)
	else
		confess_sins(confession_type)

/mob/living/carbon/human/proc/confess_sins(confession_type = "antag", resist)
	var/static/list/innocent_lines = list(
		"NO LO SE",
		"PARA EL DOLOR!!",
		"NO MEREZCO ESTO!",
		"EL DOLOR!",
		"NO TENGO NADA QUE DECIR...!",
		"POR QUE YO?!",
	)
	if(!resist)
		var/list/confessions = list()
		switch(confession_type)
			if("patron")
				if(length(patron?.confess_lines))
					confessions += patron.confess_lines
			if("antag")
				for(var/datum/antagonist/antag in mind?.antag_datums)
					if(!length(antag.confess_lines))
						continue
					confessions += antag.confess_lines
		if(length(confessions))
			say(pick(confessions), spans = list("torture"))
			return
	say(pick(innocent_lines), spans = list("torture"))
