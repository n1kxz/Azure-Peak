/datum/antagonist/ascendant
	name = "Ascendant"
	roundend_category = "maniacs"
	antagpanel_category = "Maniac"
	antag_memory = "<b>PSYDION ESTA MUERTO. El Viejo Panteon es DEBIL, y los nuevos diosess SON NECIOS. EL MUNDO ESTA MURIENDO, Y YO SOY LO UNICO QUE PUEDE SALVARLO- LA ESPADA DEL COMETA SYON, APUÑALAME HASTA QUE TERMINE.</b>"
	job_rank = ROLE_ASCENDANT
	antag_hud_type = ANTAG_HUD_TRAITOR
	antag_hud_name = "villain"
	confess_lines = list(
		"Hah- ahah- ahahah! Estas VIVIENDO EN UN CUERPO!",
		"Dios viene. Dios Esta aqui.",
		"YO SOY DIOS.",
		"LA BARAJA ESTA ALINEADA, Y EL RIO NUNCA VUELVE.",
	)
	rogue_enabled = TRUE
	/// Traits we apply to the owner
	var/static/list/applied_traits = list(
		TRAIT_NOROGSTAM,
		TRAIT_SCHIZO_AMBIENCE,
		TRAIT_SHOCKIMMUNE,
	)

	/// Cached old stats in case we get removed
	var/STASTR
	var/STACON
	var/STAEND

/*
var/psydon_artefact_one = psydon_pool[1]
var/psydon_artefact_two = psydon_pool[2]
var/psydon_capstone_one = psydon_pool[3]

// revealed after cap one
var/psydon_artefact_three = psydon_pool[4]
var/psydon_artefact_four = psydon_pool[5]
var/psydon_capstone_two = psydon_pool[6]

//Roger, the deal is honored - you are blessed with entry to heaven.
var/psydon_ascend = psydon_pool[7]


	var/psydon_artefact_one
	var/psydon_artefact_two
	var/psydon_capstone_one

//these are revealed after capstone one
	var/psydon_artefact_three
	var/psydon_artefact_four
	var/psydon_capstone_two

//ascension artefact
	var/psydon_ascend
*/
	var/static/list/possible_weapons = list(
		/obj/item/rogueweapon/sword/cutlass,
		/obj/item/rogueweapon/sword/decorated,
		/obj/item/rogueweapon/sword/sabre/dec,
	)

/datum/antagonist/ascendant/on_gain()
	. = ..()

	owner.special_role = ROLE_ASCENDANT
	owner.special_items["Ascendant"] = pick(possible_weapons)
	if(owner.current)
		if(ishuman(owner.current))

			for(var/trait in applied_traits)
				ADD_TRAIT(owner.current, trait, "[type]")

			var/mob/living/carbon/human/dreamer = owner.current
			var/sword_skill = dreamer.mind.get_skill_level(/datum/skill/combat/swords)
			var/unarmed_skill = dreamer.mind.get_skill_level(/datum/skill/combat/unarmed)
			var/wrestling_skill = dreamer.mind.get_skill_level(/datum/skill/combat/wrestling)
			if(sword_skill < 6)
				owner.adjust_skillrank(/datum/skill/combat/swords, 6 - sword_skill, TRUE)
			if(unarmed_skill < 6)
				owner.adjust_skillrank(/datum/skill/combat/unarmed, 6 - unarmed_skill, TRUE)
			if(wrestling_skill)
				owner.adjust_skillrank(/datum/skill/combat/wrestling, 6 - wrestling_skill, TRUE)
			STASTR = dreamer.STASTR
			STACON = dreamer.STACON
			STAEND = dreamer.STAEND
			dreamer.STASTR += 2
			dreamer.STACON += 2
			dreamer.STAEND += 2

		if(length(objectives))
			SEND_SOUND(owner.current, 'sound/villain/ascendant_intro.ogg')
			to_chat(owner.current, span_danger("[antag_memory]"))
			owner.announce_objectives()

