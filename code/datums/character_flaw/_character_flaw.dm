
GLOBAL_LIST_INIT(character_flaws, list(
	"Alcohólico"=/datum/charflaw/addiction/alcoholic,
	"Devoto"=/datum/charflaw/addiction/godfearing,
	"Daltónico"=/datum/charflaw/colorblind,
	"Fumador"=/datum/charflaw/addiction/smoker,
	"Adicto"=/datum/charflaw/addiction/junkie,
	"Avaricioso"=/datum/charflaw/greedy,
	"Narcoléptico"=/datum/charflaw/narcoleptic,
	//"Nymphomaniac"=/datum/charflaw/addiction/lovefiend,
	"Sadista"=/datum/charflaw/addiction/sadist,
	"Masoquista"=/datum/charflaw/masochist,
	"Paranoico"=/datum/charflaw/paranoid,
	"Pegajoso"=/datum/charflaw/clingy,
	"Ermitaño"=/datum/charflaw/isolationist,
	"Miope"=/datum/charflaw/badsight,
	"Cíclope (D)"=/datum/charflaw/noeyer,
	"Cíclope (I)"=/datum/charflaw/noeyel,
	"Brazo de Madera (D)"=/datum/charflaw/limbloss/arm_r,
	"Brazo de Madera (I)"=/datum/charflaw/limbloss/arm_l,
	"Aleatorio o Ninguno"=/datum/charflaw/randflaw,
	"Sin Defecto (3 Triunfos)"=/datum/charflaw/noflaw
	))

/datum/charflaw
	var/name
	var/desc
	var/ephemeral = FALSE // This flaw is currently disabled and will not process

/datum/charflaw/proc/on_mob_creation(mob/user)
	return

/datum/charflaw/proc/apply_post_equipment(mob/user)
	return

/datum/charflaw/proc/flaw_on_life(mob/user)
	return

/mob/proc/has_flaw(flaw)
	return

/mob/living/carbon/human/has_flaw(flaw)
	if(!flaw)
		return
	if(istype(charflaw, flaw))
		return TRUE

/mob/proc/get_flaw(flaw_type)
	return

/mob/living/carbon/human/get_flaw(flaw_type)
	if(!flaw_type)
		return
	if(charflaw != flaw_type)
		return
	return charflaw

/datum/charflaw/randflaw
	name = "Aleatorio o Ninguno"
	desc = "Un 50% de probabilidades de no tener ningún defecto, y otro 50% de tener uno aleatorio."
	var/nochekk = TRUE

/datum/charflaw/randflaw/flaw_on_life(mob/user)
	if(!nochekk)
		return
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(H.ckey)
			nochekk = FALSE
			if(prob(50))
				var/flawz = GLOB.character_flaws.Copy()
				var/charflaw = pick_n_take(flawz)
				charflaw = GLOB.character_flaws[charflaw]
				if((charflaw == type) || (charflaw == /datum/charflaw/noflaw))
					charflaw = pick_n_take(flawz)
					charflaw = GLOB.character_flaws[charflaw]
				if((charflaw == type) || (charflaw == /datum/charflaw/noflaw))
					charflaw = pick_n_take(flawz)
					charflaw = GLOB.character_flaws[charflaw]
				H.charflaw = new charflaw()
				H.charflaw.on_mob_creation(H)
			else
				H.charflaw = new /datum/charflaw/eznoflaw()
				H.charflaw.on_mob_creation(H)


/datum/charflaw/eznoflaw
	name = "Ningún Defecto"
	desc = "Eres una persona normal, ¡que raro!"

/datum/charflaw/noflaw
	name = "Ningún Defecto (3 TRI)"
	desc = "Soy una persona normal, ¡que raro! (Consume 3 TRIUNFOS o da un defecto aleatorio.)"
	var/nochekk = TRUE

/datum/charflaw/noflaw/flaw_on_life(mob/user)
	if(!nochekk)
		return
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(H.ckey)
			if(H.get_triumphs() < 3)
				nochekk = FALSE
				var/flawz = GLOB.character_flaws.Copy()
				var/charflaw = pick_n_take(flawz)
				charflaw = GLOB.character_flaws[charflaw]
				if((charflaw == type) || (charflaw == /datum/charflaw/randflaw))
					charflaw = pick_n_take(flawz)
					charflaw = GLOB.character_flaws[charflaw]
				if((charflaw == type) || (charflaw == /datum/charflaw/randflaw))
					charflaw = pick_n_take(flawz)
					charflaw = GLOB.character_flaws[charflaw]
				H.charflaw = new charflaw()
				H.charflaw.on_mob_creation(H)
			else
				nochekk = FALSE
				H.adjust_triumphs(-3)

/datum/charflaw/badsight
	name = "Mala Vista"
	desc = "Todos estos años de leer libros han hecho que ahora tenga que llevar gafas."

/datum/charflaw/badsight/flaw_on_life(mob/user)
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	if(H.wear_mask)
		if(isclothing(H.wear_mask))
			if(istype(H.wear_mask, /obj/item/clothing/mask/rogue/spectacles))
				var/obj/item/I = H.wear_mask
				if(!I.obj_broken)
					return
	H.blur_eyes(2)
	H.apply_status_effect(/datum/status_effect/debuff/badvision)

/datum/status_effect/debuff/badvision
	id = "badvision"
	alert_type = null
	effectedstats = list("perception" = -20, "speed" = -5)
	duration = 10 SECONDS

/datum/charflaw/badsight/on_mob_creation(mob/user)
	..()
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	if(!H.wear_mask)
		H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/spectacles(H), SLOT_WEAR_MASK)
	else
		new /obj/item/clothing/mask/rogue/spectacles(get_turf(H))

	// we don't seem to have a mind when on_mob_creation fires, so set up a timer to check when we probably will
	addtimer(CALLBACK(src, PROC_REF(apply_reading_skill), H), 5 SECONDS)

/datum/charflaw/badsight/proc/apply_reading_skill(mob/living/carbon/human/H)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)

/datum/charflaw/paranoid
	name = "Paranoico"
	desc = "Tengo más ansiedad que el resto de gente. Desconfío de otras razas y temo ver sangre."
	var/last_check = 0

/datum/charflaw/paranoid/flaw_on_life(mob/user)
	if(world.time < last_check + 10 SECONDS)
		return
	if(!user)
		return
	last_check = world.time
	var/cnt = 0
	for(var/mob/living/carbon/human/L in hearers(7, user))
		if(L == src)
			continue
		if(L.stat)
			continue
		if(L.dna?.species)
			if(ishuman(user))
				var/mob/living/carbon/human/H = user
				if(L.dna.species.id != H.dna.species.id)
					cnt++
		if(cnt > 2)
			break
	if(cnt > 2)
		user.add_stress(/datum/stressevent/paracrowd)
	cnt = 0
	for(var/obj/effect/decal/cleanable/blood/B in view(7, user))
		cnt++
		if(cnt > 3)
			break
	if(cnt > 6)
		user.add_stress(/datum/stressevent/parablood)

/datum/charflaw/isolationist
	name = "Ermitaño"
	desc = "No me gusta estar cerca de otras personas. Puede que me quieran hacer daño..."
	var/last_check = 0

/datum/charflaw/isolationist/flaw_on_life(mob/user)
	. = ..()
	if(world.time < last_check + 10 SECONDS)
		return
	if(!user)
		return
	last_check = world.time
	var/cnt = 0
	for(var/mob/living/carbon/human/L in hearers(7, user))
		if(L == user)
			continue
		if(L.stat)
			continue
		if(L.dna.species)
			cnt++
		if(cnt > 3)
			break
	var/mob/living/carbon/P = user
	if(cnt > 3)
		P.add_stress(/datum/stressevent/crowd)

/datum/charflaw/clingy
	name = "Miedo A Estar Solo"
	desc = "Necesito estar cerca de gente... Tengo miedo a lo que me pueda pasar si estoy solo."
	var/last_check = 0

/datum/charflaw/clingy/flaw_on_life(mob/user)
	. = ..()
	if(world.time < last_check + 10 SECONDS)
		return
	if(!user)
		return
	last_check = world.time
	var/cnt = 0
	for(var/mob/living/carbon/human/L in hearers(7, user))
		if(L == user)
			continue
		if(L.stat)
			continue
		if(L.dna.species)
			cnt++
		if(cnt > 1)
			break
	var/mob/living/carbon/P = user
	if(cnt < 1)
		P.add_stress(/datum/stressevent/nopeople)

/datum/charflaw/noeyer
	name = "Cíclope (D)"
	desc = "Perdí mi ojo derecho hace mucho tiempo"

/datum/charflaw/noeyer/on_mob_creation(mob/user)
	..()
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	if(!H.wear_mask)
		H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/eyepatch(H), SLOT_WEAR_MASK)
	var/obj/item/bodypart/head/head = H.get_bodypart(BODY_ZONE_HEAD)
	head?.add_wound(/datum/wound/facial/eyes/right/permanent)
	H.update_fov_angles()

/datum/charflaw/noeyel
	name = "Cíclope (I)"
	desc = "Perdí mi ojo izquierdo hace mucho tiempo."

/datum/charflaw/noeyel/on_mob_creation(mob/user)
	..()
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	if(!H.wear_mask)
		H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/eyepatch/left(H), SLOT_WEAR_MASK)
	var/obj/item/bodypart/head/head = H.get_bodypart(BODY_ZONE_HEAD)
	head?.add_wound(/datum/wound/facial/eyes/left/permanent)
	H.update_fov_angles()

/datum/charflaw/colorblind
	name = "Daltónico"
	desc = "Fui maldito con una mala vista, como consecuencia no puedo distinguir cosas que otros sí."

/datum/charflaw/colorblind/on_mob_creation(mob/user)
	..()
	user.add_client_colour(/datum/client_colour/monochrome)

/datum/charflaw/greedy
	name = "Avaricioso"
	desc = "No puedo conseguir suficientes mammons, ¡necesito más y más! También me volví bueno en saber cuánto valen las cosas"
	var/last_checked_mammons = 0
	var/required_mammons = 0
	var/next_mammon_increase = 0
	var/last_passed_check = 0
	var/first_tick = FALSE
	var/extra_increment_value = 0

/datum/charflaw/greedy/on_mob_creation(mob/user)
	next_mammon_increase = world.time + rand(15 MINUTES, 25 MINUTES)
	last_passed_check = world.time
	ADD_TRAIT(user, TRAIT_SEEPRICES, "[type]")

/datum/charflaw/greedy/flaw_on_life(mob/user)
	if(!first_tick)
		determine_starting_mammons(user)
		first_tick = TRUE
		return
	if(world.time >= next_mammon_increase)
		mammon_increase(user)
	mammon_check(user)

/datum/charflaw/greedy/proc/determine_starting_mammons(mob/living/carbon/human/user)
	var/starting_mammons = get_mammons_in_atom(user)
	required_mammons = round(starting_mammons * 0.7)
	extra_increment_value = round(starting_mammons * 0.15)

/datum/charflaw/greedy/proc/mammon_increase(mob/living/carbon/human/user)
	if(last_passed_check + (50 MINUTES) < world.time) //If we spend a REALLY long time without being able to satisfy, then pity downgrade
		required_mammons -= rand(10, 20)
		to_chat(user, span_blue("A lo mejor tener menos mammons estaría bien..."))
	else
		required_mammons += rand(25, 35) + extra_increment_value
	required_mammons = min(required_mammons, 250) //Cap at 250 coins maximum
	next_mammon_increase = world.time + rand(35 MINUTES, 40 MINUTES)
	var/current_mammons = get_mammons_in_atom(user)
	if(current_mammons >= required_mammons)
		to_chat(user, span_blue("Estoy feliz con los mammons que tengo..."))
	else
		to_chat(user, span_boldwarning("Necesito más mammons, no puedo conseguir suficientes..."))

	last_checked_mammons = current_mammons

/datum/charflaw/greedy/proc/mammon_check(mob/living/carbon/human/user)
	var/new_mammon_amount = get_mammons_in_atom(user)
	var/ascending = (new_mammon_amount > last_checked_mammons)

	var/do_update_msg = TRUE
	if(new_mammon_amount >= required_mammons)
		// Feel better
		if(user.has_stress_event(/datum/stressevent/vice))
			to_chat(user, span_blue("[new_mammon_amount] mammons... Eso está mucho mejor.."))
		user.remove_stress(/datum/stressevent/vice)
		user.remove_status_effect(/datum/status_effect/debuff/addiction)
		last_passed_check = world.time
		do_update_msg = FALSE
	else
		// Feel bad
		user.add_stress(/datum/stressevent/vice)
		user.apply_status_effect(/datum/status_effect/debuff/addiction)

	if(new_mammon_amount == last_checked_mammons)
		do_update_msg = FALSE

	if(do_update_msg)
		if(ascending)
			to_chat(user, span_warning("Solo [new_mammon_amount] mammons.. Necesito más..."))
		else
			to_chat(user, span_boldwarning("¡No! Mis preciosos mammons..."))

	last_checked_mammons = new_mammon_amount

/datum/charflaw/narcoleptic
	name = "Narcoléptico"
	desc = "Me aletargo y me duermo de forma involuntaria, pero puedo dormir más fácilmente si quiero, y el moondust puede ayudarme."
	var/last_unconsciousness = 0
	var/next_sleep = 0
	var/concious_timer = (10 MINUTES)
	var/do_sleep = FALSE
	var/pain_pity_charges = 3
	var/drugged_up = FALSE

/datum/charflaw/narcoleptic/on_mob_creation(mob/user)
	ADD_TRAIT(user, TRAIT_FASTSLEEP, "[type]")
	reset_timer()

/datum/charflaw/narcoleptic/proc/reset_timer()
	do_sleep = FALSE
	last_unconsciousness = world.time
	concious_timer = rand(7 MINUTES, 15 MINUTES)
	pain_pity_charges = rand(2,4)

/datum/charflaw/narcoleptic/flaw_on_life(mob/living/carbon/human/user)
	if(user.stat != CONSCIOUS)
		reset_timer()
		return
	if(do_sleep)
		if(next_sleep <= world.time)
			var/pain = user.get_complex_pain()
			if(pain >= 40 && pain_pity_charges > 0)
				pain_pity_charges--
				concious_timer = rand(1 MINUTES, 2 MINUTES)
				to_chat(user, span_warning("El dolor me mantiene despierto..."))
			else
				if(prob(40) || drugged_up)
					drugged_up = FALSE
					concious_timer = rand(4 MINUTES, 6 MINUTES)
					to_chat(user, span_info("El sentimiento se ha desvanecido."))
				else
					concious_timer = rand(7 MINUTES, 15 MINUTES)
					to_chat(user, span_boldwarning("No puedo mantener mis ojos abiertos por más tiempo..."))
					user.Sleeping(rand(30 SECONDS, 50 SECONDS))
					user.visible_message(span_warning("¡[user] colapsa de repente!"))
			do_sleep = FALSE
			last_unconsciousness = world.time
	else
		// Been conscious for ~10 minutes (whatever is the conscious timer)
		if(last_unconsciousness + concious_timer < world.time)
			drugged_up = FALSE
			to_chat(user, span_blue("Me estoy aletargando..."))
			user.emote("yawn", forced = TRUE)
			next_sleep = world.time + rand(7 SECONDS, 11 SECONDS)
			do_sleep = TRUE

/proc/narcolepsy_drug_up(mob/living/living)
	var/datum/charflaw/narcoleptic/narco = living.get_flaw(/datum/charflaw/narcoleptic)
	if(!narco)
		return
	narco.drugged_up = TRUE

#define MASO_THRESHOLD_ONE 1
#define MASO_THRESHOLD_TWO 2
#define MASO_THRESHOLD_THREE 3
#define MASO_THRESHOLD_FOUR 4

/datum/charflaw/masochist
	name = "Masoquista"
	desc = "Me encanta sentir dolor, tanto que necesito más y más."
	var/next_paincrave = 0
	var/last_pain_threshold = NONE

/datum/charflaw/masochist/on_mob_creation(mob/living/carbon/human/user)
	next_paincrave = world.time + rand(15 MINUTES, 25 MINUTES)

/datum/charflaw/masochist/flaw_on_life(mob/living/carbon/human/user)
	if(next_paincrave > world.time)
		last_pain_threshold = NONE
		return
	user.add_stress(/datum/stressevent/vice)
	user.apply_status_effect(/datum/status_effect/debuff/addiction)
	var/current_pain = user.get_complex_pain()
	// Bloodloss makes the pain count as extra large to allow people to bloodlet themselves with cutting weapons to satisfy vice
	var/bloodloss_factor = clamp(1.0 - (user.blood_volume / BLOOD_VOLUME_NORMAL), 0.0, 0.5)
	var/new_pain_threshold = get_pain_threshold(current_pain * (1.0 + (bloodloss_factor * 1.4))) // Bloodloss factor goes up to 50%, and then counts at 140% value of that
	if(last_pain_threshold == NONE)
		to_chat(user, span_boldwarning("Quiero sentir dolor ahora mismo..."))
	else if (new_pain_threshold != last_pain_threshold)
		var/ascending = (new_pain_threshold > last_pain_threshold)
		switch(new_pain_threshold)
			if(MASO_THRESHOLD_ONE)
				to_chat(user, span_warning("El dolor se ha desvanecido..."))
			if(MASO_THRESHOLD_TWO)
				if(ascending)
					to_chat(user, span_blue("¡SI, MÁS DOLOR!"))
				else
					to_chat(user, span_warning("¡NO, MI DOLOR!"))
			if(MASO_THRESHOLD_THREE)
				to_chat(user, span_blue("¡MÁS, MÁS!"))

	last_pain_threshold = new_pain_threshold
	if(new_pain_threshold == MASO_THRESHOLD_FOUR)
		to_chat(user, span_blue("<b>Hm... Así me gusta</b>"))
		next_paincrave = world.time + rand(35 MINUTES, 45 MINUTES)
		user.remove_stress(/datum/stressevent/vice)
		user.remove_status_effect(/datum/status_effect/debuff/addiction)


/datum/charflaw/masochist/proc/get_pain_threshold(pain_amt)
	switch(pain_amt)
		if(-INFINITY to 50)
			return MASO_THRESHOLD_ONE
		if(50 to 95)
			return MASO_THRESHOLD_TWO
		if(95 to 140)
			return MASO_THRESHOLD_THREE
		if(140 to INFINITY)
			return MASO_THRESHOLD_FOUR

/proc/get_mammons_in_atom(atom/movable/movable)
	var/static/list/coins_types = typecacheof(/obj/item/roguecoin)
	var/mammons = 0
	if(coins_types[movable.type])
		var/obj/item/roguecoin/coin = movable
		mammons += coin.quantity * coin.sellprice
	for(var/atom/movable/content in movable.contents)
		mammons += get_mammons_in_atom(content)
	return mammons
