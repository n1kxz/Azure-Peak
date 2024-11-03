//// Sleep Specials
//// these should still be in the round-start/late join specials as well! It's just these are contextually fitting for Sleep Specials as well!
/datum/special_trait/nothing
	name = "Nada"
	greet_text = span_notice("No eres especial.")
	weight = 7 //As rare as Vengant Bum, just to remind you it could have been it

/datum/special_trait/nightvision
	name = "Vision Nocturna"
	greet_text = span_notice("Puedo ver facilmente en la oscuridad.")
	weight = 100

/datum/special_trait/nightvision/on_apply(mob/living/carbon/human/character, silent)
	var/obj/item/organ/eyes/eyes = character.getorganslot(ORGAN_SLOT_EYES)
	if(!eyes)
		return
	eyes.see_in_dark = 3
	eyes.lighting_alpha = LIGHTING_PLANE_ALPHA_NV_TRAIT
	character.update_sight()

/datum/special_trait/thickskin
	name = "Duro"
	greet_text = span_notice("Lo puedo sentir sentir. Piel gruesa. Carne densa. Huesos resistentes. Soy una máquina de recibir golpes..")
	weight = 100

/datum/special_trait/thickskin/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_BREADY, "[type]")
	character.change_stat("constitution", 2)

/datum/special_trait/curseofcain
	name = "Maldicion De Cain"
	greet_text = span_notice("Siento que no necesito comer, y mis venas estan vacias... Es esto normal?")
	weight = 35

/datum/special_trait/curseofcain/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_NOHUNGER, "[type]")
	ADD_TRAIT(character, TRAIT_NOBREATH, "[type]")

/datum/special_trait/deadened
	name = "Muerto Por Dentro"
	greet_text = span_notice("Desde que <b>ESO</b> paso, nunca he sido capaz de sentir algo. Por dentro o por fuera")
	weight = 35

/datum/special_trait/deadened/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_NOMOOD, "[type]")
	ADD_TRAIT(character, TRAIT_CRITICAL_RESISTANCE, "[type]")

/datum/special_trait/latentmagic
	name = "Magia Potencial"
	greet_text = span_notice("He iniciado mi potencial en la magia.")
	weight = 35

/datum/special_trait/latentmagic/on_apply(mob/living/carbon/human/character, silent)
	character.mind.adjust_skillrank(/datum/skill/magic/arcane, 1, TRUE)

/datum/special_trait/value
	name = "Contador De Monedas"
	greet_text = span_notice("Se como estimar el valor de un objeto.")
	weight = 100
	restricted_traits = list(TRAIT_SEEPRICES)

/datum/special_trait/value/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_SEEPRICES, "[type]")

/datum/special_trait/lightstep
	name = "A Paso Ligero"
	greet_text = span_notice("Soy silencioso como un gato, nadie puede oir mis pisadas.")
	weight = 100

/datum/special_trait/lightstep/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_LIGHT_STEP, "[type]")

/datum/special_trait/night_owl
	name = "Ave Nocturna"
	greet_text = span_notice("Que se puede decir? Siempre he sido una persona nocturna.")
	weight = 100

/datum/special_trait/night_owl/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_NIGHT_OWL, "[type]")

/datum/special_trait/beautiful
	name = "Precioso"
	greet_text = span_notice("Por algun motivo la gente adora ver mi cara.")
	weight = 100

/datum/special_trait/beautiful/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_BEAUTIFUL, "[type]")

//positive
/datum/special_trait/duelist
	name = "Aprendiz de espadas"
	greet_text = span_notice("Fui alumno de un legendario maestro de la espada, pocos rivales pueden comparar mi habilidad! Tambien he escondido un estoque..")
	weight = 50

/datum/special_trait/duelist/on_apply(mob/living/carbon/human/character, silent)
	character.cmode_music = 'sound/music/combat_duelist.ogg'
	character.change_stat("speed", 2)
	character.mind.adjust_skillrank_up_to(/datum/skill/combat/swords, 6, TRUE) //will make a unique trait later on
	character.mind.special_items["Rapier"] = /obj/item/rogueweapon/sword/rapier

/datum/special_trait/eagle_eyed
	name = "Ojos De Aguila"
	greet_text = span_notice("Con mi punteria aguda siempre pude alcanzar objetivos distantes, tambien escondi una ballesta y algunas flechas..")
	weight = 50

/datum/special_trait/eagle_eyed/on_apply(mob/living/carbon/human/character, silent)
	character.change_stat("perception", 2)
	character.mind.adjust_skillrank_up_to(/datum/skill/combat/crossbows, 5, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/combat/bows, 4, TRUE)
	character.mind.special_items["Crossbow"] = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	character.mind.special_items["Bolts"] = /obj/item/quiver/bolts

/datum/special_trait/mule
	name = "Mula"
	greet_text = span_notice("He estado trapicheando con drogas y las he escondido por ahi")
	weight = 100

/datum/special_trait/mule/on_apply(mob/living/carbon/human/character, silent)
	character.mind.special_items["Stash One"] = /obj/item/storage/backpack/rogue/satchel/mule
	character.mind.special_items["Stash Two"] = /obj/item/storage/backpack/rogue/satchel/mule
	character.mind.special_items["Dagger"] = /obj/item/rogueweapon/huntingknife/idagger
	character.mind.adjust_skillrank_up_to(/datum/skill/combat/knives, 2, TRUE)

/datum/special_trait/cunning_linguist
	name = "Cunnilingus"
	greet_text = span_notice("Conozco un idioma extra, y no es por fardar pero puedo ser bastante seductor.")
	weight = 100

/datum/special_trait/cunning_linguist/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_GOODLOVER, "[type]")
	switch(rand(1,3))
		if(1)
			character.grant_language(/datum/language/elvish)
		if(2)
			character.grant_language(/datum/language/hellspeak)
		if(3)
			character.grant_language(/datum/language/draconic)

/datum/special_trait/corn_fed
	name = "Comedor De Maiz"
	greet_text = span_notice("Mi dieta se basa en maiz.")
	weight = 100

/datum/special_trait/corn_fed/on_apply(mob/living/carbon/human/character, silent)
	character.change_stat("constitution", 2)
	character.change_stat("intelligence", -2)

/datum/special_trait/bookworm
	name = "Nerd"
	greet_text = span_notice("Soy un fan de la lectura y me gusta leer libros frecuentemente.")
	weight = 100

/datum/special_trait/bookworm/on_apply(mob/living/carbon/human/character, silent)
	character.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 4, TRUE)

/datum/special_trait/arsonist
	name = "Piromano"
	greet_text = span_notice("Me gusta ver cosas combustionar y quemar. He escondido dos dispositivos explosivos improvidados.")
	weight = 100

/datum/special_trait/arsonist/on_apply(mob/living/carbon/human/character, silent)
	character.mind.special_items["Firebomb One"] = /obj/item/bomb
	character.mind.special_items["Firebomb Two"] = /obj/item/bomb
	character.mind.adjust_skillrank_up_to(/datum/skill/misc/alchemy, 1, TRUE)

/datum/special_trait/pineapple
	name = "La palabra segura es \"Pineapple\""
	greet_text = span_notice("Disfruto azotando a la gente hasta que se retuercen y gimen, su dolor me produce placer. También tengo un latigo escondido.")
	weight = 50

/datum/special_trait/pineapple/on_apply(mob/living/carbon/human/character, silent)
	character.mind.special_items["Whip"] = /obj/item/rogueweapon/whip
	character.mind.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 6, TRUE)

/datum/special_trait/psydons_rider
	name = "El Conductor Ebrio Favorito De Psydon"
	greet_text = span_notice("Yi-Yio Cond-Conduzo *HIP! Niri-Niringu-Ninguna leiyes' *HIP de es-estas tierr-tierrosas tierras me lo im-impedura' *BURP e-es la vol-vountad' de Psydon!")
	req_text = "Tienes Que Adorar A Psydon"
	allowed_patrons = list(/datum/patron/old_god)
	weight = 100

/datum/special_trait/psydons_rider/on_apply(mob/living/carbon/human/character, silent)
	character.drunkenness = 50
	for(var/i in 1 to 2)
		var/obj/item/bottle = new /obj/item/reagent_containers/glass/bottle/rogue/wine(get_turf(character))
		character.put_in_hands(bottle, forced = TRUE)

	character.mind.adjust_skillrank_up_to(/datum/skill/misc/riding, 4, TRUE)
	new /mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame/saddled(get_turf(character))

/datum/special_trait/spring_in_my_step
	name = "Resortes En Las Piernas"
	greet_text = span_notice("Mis piernas son bastante fuertes y donde la mayoria tiene que trepar, yo puedo simplemente saltar.")
	weight = 35

/datum/special_trait/spring_in_my_step/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_ZJUMP, "[type]")

/datum/special_trait/tolerant
	name = "Tolerante"
	greet_text = span_notice("Sueño con un futuro ideal, donde todas las razas son iguales.")
	weight = 100

/datum/special_trait/tolerant/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_TOLERANT, "[type]")

/datum/special_trait/thief
	name = "Ladron"
	greet_text = span_notice("La vida no es fácil por aqui, pero he hecho la mia un poco mas facil tomando cosas de otros.")
	weight = 100

/datum/special_trait/thief/on_apply(mob/living/carbon/human/character, silent)
	character.mind.adjust_skillrank_up_to(/datum/skill/misc/stealing, 5, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/misc/sneaking, 4, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/misc/climbing, 3, TRUE)

/datum/special_trait/languagesavant
	name = "Polyglota"
	greet_text = span_notice("Siempre he aprendido idiomas con facilidad, incluso aquellos que estan prohibidos para los mortales..")
	weight = 100

/datum/special_trait/languagesavant/on_apply(mob/living/carbon/human/character, silent)
	character.grant_language(/datum/language/dwarvish)
	character.grant_language(/datum/language/elvish)
	character.grant_language(/datum/language/hellspeak)
	character.grant_language(/datum/language/celestial)
	character.grant_language(/datum/language/orcish)
	character.grant_language(/datum/language/beast)
	character.grant_language(/datum/language/draconic)

/datum/special_trait/civilizedbarbarian
	name = "Boxeador De Taverna"
	greet_text = span_notice("Mis puños son los mas fuertes de todo Azure Peak!")
	weight = 100

/datum/special_trait/civilizedbarbarian/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC) //Need to make trait improve hitting people with chairs, mugs, goblets.

/datum/special_trait/mastercraftsmen
	name = "Artesano Maestro"
	greet_text = "En mi juventud, decidi que iba a dedicar mi vida a la creacion, y por ende persegui los diez artes de la creacion."
	req_text = "Mediana-Edad O Viejo"
	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD)
	weight = 100

/datum/special_trait/mastercraftsmen/on_apply(mob/living/carbon/human/character)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/crafting, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/weaponsmithing, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/armorsmithing, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/blacksmithing, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/carpentry, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/masonry, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/traps, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/cooking, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/engineering, 2, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/craft/tanning, 2, TRUE)

/datum/special_trait/bleublood
	name = "Lineaje Noble"
	greet_text = span_notice("Vengo de sangre noble.")
	restricted_traits = list(TRAIT_NOBLE)
	weight = 100

/datum/special_trait/bleublood/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_NOBLE, "[type]")
	character.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 2, TRUE)

/datum/special_trait/richpouch
	name = "Bolsa Rica"
	greet_text = span_notice("Recientemente encontre una bolsa llena de mammones, probablemente perteneciente a algun noble..")
	weight = 100

/datum/special_trait/richpouch/on_apply(mob/living/carbon/human/character, silent)
	var/obj/item/pouch = new /obj/item/storage/belt/rogue/pouch/coins/rich(get_turf(character))
	character.put_in_hands(pouch, forced = TRUE)

/datum/special_trait/swift
	name = "Rapido Y Furioso"
	greet_text = span_notice("Me siento la persona mas rapida del mundo y probablemente pueda esquivar cualquier cosa, siempre y cuando no este agobiado por una armadura mediana o pesada.")
	weight = 50

/datum/special_trait/swift/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_DODGEEXPERT, "[type]")
	character.mind.adjust_skillrank(/datum/skill/misc/athletics, 6, TRUE)
	character.change_stat("speed", 3)

/datum/special_trait/gourmand
	name = "Goloso"
	greet_text = span_notice("Puedo comer incluso los alimentos mas en mal estado, crudos o toxicos y el agua como si fueran manjares...")
	weight = 100

/datum/special_trait/gourmand/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_NASTY_EATER, "[type]")

/datum/special_trait/lucky
	name = "Adicto A Las Apuestas"
	greet_text = span_notice("Xylix me ama, soy extremadamente suertudo.")
	req_text = "Ten a Xylix como patron"
	allowed_patrons = list(/datum/patron/divine/xylix)
	weight = 20

/datum/special_trait/lucky/on_apply(mob/living/carbon/human/character, silent)
	character.STALUC = rand(15, 20) //In other words, In the next round following the special, you are effectively lucky.

//neutral
/datum/special_trait/backproblems
	name = "Gigante"
	greet_text = span_notice("Siempre me han llamado gigante. Me valoran por mi estatura, pero este mundo hecho para gente mas pequeña me ha obligado a moverme con cautela..")
	req_text = "No ser un Kobold, Verminvolk o un Dwarf"
	restricted_races = list(/datum/species/anthromorphsmall, /datum/species/dwarf/mountain, /datum/species/kobold)
	weight = 50

/datum/special_trait/backproblems/on_apply(mob/living/carbon/human/character)
	character.change_stat("strength", 2)
	character.change_stat("constitution", 1)
	character.change_stat("speed", -2)
	character.transform = character.transform.Scale(1.25, 1.25)
	character.transform = character.transform.Translate(0, (0.25 * 16))
	character.update_transform()

/datum/special_trait/atheism
	name = "ATEO, ATEO!!"
	greet_text = span_notice("Los dioses 'puede' que existan, pero sabes que? Me importa UNA MIERDA.")
	req_text = "Ningun rol de la iglesia"
	restricted_jobs = list(CHURCH_ROLES)
	weight = 100

/datum/special_trait/atheism/on_apply(mob/living/carbon/human/character, silent)
	character.set_patron(/datum/patron/godless)

//negative
/datum/special_trait/nimrod
	name = "Nimrod"
	greet_text = span_boldwarning("En el pasado aprendi mas lento que mis compañeros y tiendo a ser torpe..")
	weight = 100

/datum/special_trait/nimrod/on_apply(mob/living/carbon/human/character, silent)
	character.change_stat("speed", -2)
	character.change_stat("intelligence", -4)

/datum/special_trait/nopouch
	name = "Sin Bolsa De Monedas"
	greet_text = span_boldwarning("Alguien me ha robado mi bolso con monedas, no tengo ni un zenny..")
	weight = 100

/datum/special_trait/nopouch/on_apply(mob/living/carbon/human/character, silent)
	var/obj/item/pouch = locate(/obj/item/storage/belt/rogue/pouch) in character
	if(character.wear_neck == pouch)
		character.wear_neck = null
	if(character.beltl == pouch)
		character.beltl = null
	if(character.beltr == pouch)
		character.beltr = null
	qdel(pouch)

/datum/special_trait/hussite
	name = "Hereje Conocido!"
	greet_text = span_boldwarning("He sido declarado un hereje por la iglesia, aunque sea verdad o no!")
	req_text = "Ningun rol de la iglesia"
	weight = 35
	restricted_jobs = list(CHURCH_ROLES)

/datum/special_trait/hussite/on_apply(mob/living/carbon/human/character, silent)
	GLOB.excommunicated_players += character.real_name

/datum/special_trait/bounty
	name = "Fugitivo"
	greet_text = span_boldwarning("Alguien puso una recompensa por mi cabeza!")
	weight = 35

/datum/special_trait/bounty/on_apply(mob/living/carbon/human/character, silent)
	var/reason = ""
	var/employer = "unknown employer"
	var/employer_gender
	if(prob(65))
		employer_gender = MALE
	else
		employer_gender = FEMALE
	if(employer_gender == MALE)
		employer = pick(list("Baron", "Lord", "Nobleman", "Prince"))
	else
		employer = pick(list("Duchess", "Lady", "Noblelady", "Princess"))
	employer = "[employer] [random_human_name(employer_gender, FALSE, FALSE)]"
	var/amount = rand(40,100)
	switch(rand(1,7))
		if(1)
			reason = "asesinato"
		if(2)
			reason = "matanza de parientes"
		if(3)
			reason = "mancillar el nombre de un noble"
		if(4)
			reason = "traicion"
		if(5)
			reason = "incendio provocado"
		if(6)
			reason = "herejia"
		if(7)
			reason = "robar a un noble"
	add_bounty(character.real_name, amount, FALSE, reason, employer)
	if(!silent)
		to_chat(character, span_notice("Sea cierto o no he sido acusado de [reason], [employer] Puso una recompensa por mi cabeza!"))

/datum/special_trait/outlaw
	name = "Fugitivo Conocido"
	greet_text = span_boldwarning("Sea por crimenes que he cometido o no, he sido declarado un fugitivo!")
	weight = 35

/datum/special_trait/outlaw/on_apply(mob/living/carbon/human/character, silent)
	make_outlaw(character.real_name, TRUE)

/datum/special_trait/sillyvoice
	name = "Molesto"
	greet_text = span_sans("La gente odia mi voz por algun motivo.")
	weight = 100

/datum/special_trait/sillyvoice/on_apply(mob/living/carbon/human/character)
	ADD_TRAIT(character, TRAIT_COMICSANS, "[type]")
	character.dna.add_mutation(WACKY)

/datum/special_trait/unlucky
	name = "Mala Suerte"
	greet_text = span_boldwarning("Desde que te cruzaste con ese gato negro tienes una suerte malisima.")
	weight = 100

/datum/special_trait/unlucky/on_apply(mob/living/carbon/human/character, silent)
	character.STALUC = rand(1, 10)


/datum/special_trait/jesterphobia
	name = "Fobia A Los Bufones"
	greet_text = span_boldwarning("Tengo un miedo irracional a los bufones... N-No hay ninguno por aqui, cierto?!")
	weight = 50

/datum/special_trait/jesterphobia/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_JESTERPHOBIA, "[type]")

/datum/special_trait/wild_night
	name = "Noche De Juerga"
	greet_text = span_boldwarning("Ayer me fui a un fieston, despues de despertarme de la resaca, no se donde estoy!")
	weight = 100

/datum/special_trait/wild_night/on_apply(mob/living/carbon/human/character, silent)
	var/turf/location = get_spawn_turf_for_job("Pilgrim")
	character.forceMove(location)
	grant_lit_torch(character)

/datum/special_trait/atrophy
	name = "Atrofiado"
	greet_text = span_boldwarning("Cuando era un niño apenas pude alimentarme... Esto me ha hecho ser debil y fragil.")
	weight = 50

/datum/special_trait/atrophy/on_apply(mob/living/carbon/human/character)
	character.change_stat("strength", -2)
	character.change_stat("constitution", -2)
	character.change_stat("endurance", -1)

/datum/special_trait/lazy
	name = "Vago"
	greet_text = span_boldwarning("Me importa todo una mierda, no me importa nada, y no me gusta trabajar.")
	weight = 50

/datum/special_trait/lazy/on_apply(mob/living/carbon/human/character)
	character.change_stat("strength", -1)
	character.change_stat("constitution", -1)
	character.change_stat("endurance", -1)
	character.change_stat("speed", -1)
	character.change_stat("perception", -1)

/datum/special_trait/bad_week
	name = "Mala Semana"
	greet_text = span_boldwarning("Todo me toca los cojones... Eh, tu! Me has dicho algo?")
	weight = 100

/datum/special_trait/bad_week/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_BAD_MOOD, "[type]")

/datum/special_trait/nude_sleeper
	name = "Dormidor Selectivo"
	greet_text = span_boldwarning("No parece que me sea facil dormir, estoy <i>REALMENTE</i> incomodo...")
	weight = 35

/datum/special_trait/nude_sleeper/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_NUDE_SLEEPER, "[type]")

//job specials
/datum/special_trait/punkprincess //I think everyone will like the Rebellous Prince-Like Princess. I'd love to do one for the prince as well that gives him princess loadout, but, up to you!
	name = "Adolescente Rebelde"
	greet_text = span_notice("Soy bastante rebelde para una princesa. Al carajo con las costumbres!")
	req_text = "Se una princesa"
	allowed_sexes = list(FEMALE)
	allowed_jobs = list(/datum/job/roguetown/prince)
	weight = 50

/datum/special_trait/punkprincess/on_apply(mob/living/carbon/human/character, silent)
	QDEL_NULL(character.wear_pants)
	QDEL_NULL(character.wear_shirt)
	QDEL_NULL(character.wear_armor)
	QDEL_NULL(character.shoes)
	QDEL_NULL(character.belt)
	QDEL_NULL(character.beltl)
	QDEL_NULL(character.beltr)
	QDEL_NULL(character.backr)
	QDEL_NULL(character.head)
	character.equip_to_slot_or_del(new /obj/item/clothing/under/roguetown/tights/random(character), SLOT_PANTS)
	character.equip_to_slot_or_del(new /obj/item/clothing/suit/roguetown/shirt/undershirt/guard(character), SLOT_SHIRT)
	character.equip_to_slot_or_del(new /obj/item/clothing/suit/roguetown/armor/chainmail(character), SLOT_ARMOR)
	character.equip_to_slot_or_del(new /obj/item/storage/belt/rogue/leather(character), SLOT_BELT)
	character.equip_to_slot_or_del(new /obj/item/storage/belt/rogue/pouch/coins/rich(character), SLOT_BELT_R)
	character.equip_to_slot_or_del(new /obj/item/storage/backpack/rogue/satchel(character), SLOT_BACK_R)
	character.equip_to_slot_or_del(new /obj/item/clothing/shoes/roguetown/nobleboot(character), SLOT_SHOES)
	character.mind.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
	character.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
	character.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
	character.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	character.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	character.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	character.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	character.mind.adjust_skillrank(/datum/skill/misc/reading, -2, TRUE)
	character.mind.adjust_skillrank(/datum/skill/misc/sneaking, -2, TRUE)
	character.mind.adjust_skillrank(/datum/skill/misc/stealing, -2, TRUE)

/datum/special_trait/vengantbum
	name = "Vagabundo Vengativo"
	greet_text = span_notice("Una vez fui un noble que vivia en la gloria hasta que asesinaron a mi padre frente a mi. Afortunadamente, mi mentor me llevo a un lugar seguro y me enseño todo lo que necesitaba para sobrevivir en estas tierras repugnantes. Creen que soy un delincuente, pero eso es solo una ventaja..")
	req_text = "Se un beggar"
	allowed_jobs = list(/datum/job/roguetown/beggar)
	weight = 15

/datum/special_trait/vengantbum/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_DECEIVING_MEEKNESS, "[type]")
	character.mind.adjust_skillrank(/datum/skill/combat/wrestling, 6, TRUE)
	character.mind.adjust_skillrank(/datum/skill/combat/unarmed, 6, TRUE)
	character.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 3, TRUE)
	character.STASTR = 20
	character.STACON = 20
	character.STAEND = 20

/datum/special_trait/my_precious
	name = "Mi tesoro... Mi precioso tesoro..."
	greet_text = span_notice("El anillo, es tan brillante.. Tan... Valioso, puedo sentir su poder. Es todo mio!")
	req_text = "Se un beggar"
	allowed_jobs = list(/datum/job/roguetown/beggar)
	weight = 50

/datum/special_trait/my_precious/on_apply(mob/living/carbon/human/character, silent)
	QDEL_NULL(character.wear_pants)
	QDEL_NULL(character.wear_shirt)
	QDEL_NULL(character.wear_armor)
	QDEL_NULL(character.shoes)
	QDEL_NULL(character.head)
	var/obj/item/ring = new /obj/item/clothing/ring/dragon_ring(get_turf(character))
	character.put_in_hands(ring, forced = TRUE)

/datum/special_trait/illicit_merchant
	name = "Mercader Ilicito"
	greet_text = span_notice("Estoy harto de trabajar como subordinado, voy a empezar mi propio emporio comercial. Tengo en mis manos una llave de comerciante oculta y un curioso dispositivo magico.")
	req_text = "Se un shophand"
	allowed_jobs = list(/datum/job/roguetown/shophand)
	weight = 50

/datum/special_trait/illicit_merchant/on_apply(mob/living/carbon/human/character, silent)
	character.mind.special_items["Merchant Key"] = /obj/item/roguekey/merchant
	character.mind.special_items["GOLDFACE Gem"] = /obj/item/gem_device/goldface

/datum/special_trait/xenophobic
	name = "Xenofobo"
	greet_text = span_boldwarning("Las razas inferiores envenenan nuestra tierra!")
	weight = 100

/datum/special_trait/xenophobic/on_apply(mob/living/carbon/human/character, silent)
	ADD_TRAIT(character, TRAIT_XENOPHOBIC, "[type]")
