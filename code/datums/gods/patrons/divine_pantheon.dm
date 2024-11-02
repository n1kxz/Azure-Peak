/datum/patron/divine
	name = null
	associated_faith = /datum/faith/divine
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal

/datum/patron/divine/astrata
	name = "Astrata"
	domain = "Diosa Gemela del Sol, el Dia y el Orden"
	desc = "La forma femenina de los Dioses Gemelos, la amalgama combinada de Astrata y Noc en un solo cuerpo que abre sus ojos en el glorioso dia. Los hombres se deleitan bajo el regalo del Sol. Una sola forma engendra dos Dioses que cambian en el Crepusculo y el Amanecer, pero siempre perduran, incluso por la noche."
	worshippers = "Los de Noble Corazon, Zelotes y Agricultores"
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive
	confess_lines = list(
		"ASTRATA ES MI LUZ!",
		"ASTRATA TRAE LA LEY!",
		"SIRVO LA GLORIA DEL SOL!",
	)

/datum/patron/divine/noc
	name = "Noc"
	domain = "Dios Gemelo de la Luna, la Noche y el Conocimiento"
	desc = "La forma masculina de Los Dioses Gemelos, la amalgama combinada de Noc y Astrata en un solo cuerpo que abre sus ojos durante la ponderosa Noche. El otorgo al hombre el conocimiento de la divinidad y la magia. Una sola forma engendra dos Dioses que cambian en el Crepusculo y el Amanecer, pero siempre perduran, incluso en el dia."
	worshippers = "Magos y Eruditos"
	mob_traits = list(TRAIT_NOCSIGHT)
	t1 = /obj/effect/proc_holder/spell/invoked/blindness
	t2 = /obj/effect/proc_holder/spell/invoked/invisibility
	confess_lines = list(
		"NOC ES LA NOCHE!",
		"NOC TODO LO VE!",
		"BUSCO LOS MISTERIOS DE LA LUNA!",
	)

/datum/patron/divine/dendor
	name = "Dendor"
	domain = "Dios de la Tierra y la Naturaleza"
	desc = "El Dios de lo Salvaje, nacido de los febriles sueños de Abyssor. Derramo vida desde los oceanos hacia la tierra en una locura salvaje. Padre de la Vida Terrestre. Padre de los Arboles."
	worshippers = "Druidas, Bestias, Locos"
	mob_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t1 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t2 = /obj/effect/proc_holder/spell/targeted/beasttame
	t3 = /obj/effect/proc_holder/spell/targeted/conjure_glowshroom
	confess_lines = list(
		"DENDOR PROVEE!",
		"EL PADRE ARBOL TRAE ABUNDANCIA!",
		"RESPONDO AL LLAMADO DE LA NATURALEZA!",
	)

/datum/patron/divine/abyssor
	name = "Abyssor"
	domain = "Dios del Oceano, las Tormentas y la Marea"
	desc = "El mas fuerte de los Diez; cuando desperto, el mundo se inundo durante mil dias y mil noches antes de que volviera a dormir. En su agitado descanso, Dendor surgio de su craneo como una herida abierta. Comunica poco con sus seguidores, ofreciendo solo vislumbres en sueños. Regalo al Hombre primigenio el agua."
	worshippers = "Hombres del Mar, Acuaticos Primitivos"
	mob_traits = list(TRAIT_ABYSSOR_SWIM)
	confess_lines = list(
		"ABYSSOR DOMINA LAS OLAS!",
		"LA FURIA DEL OCEANO ES LA VOLUNTAD DE ABYSSOR!",
		"ME ATRAEN LAS CORRIENTES DE LA MAREA!",
	)

/datum/patron/divine/ravox
	name = "Ravox"
	domain = "Dios de la Justicia, la Gloria y la Batalla"
	desc = "Guerrero firme, justiciero glorioso. Las leyendas dicen que descendio al Abismo para repeler las hordas demoniacas con sus propias manos y que busca guerreros para su ejercito divino entre los mortales."
	worshippers = "Guerreros, Mercenarios y aquellos que buscan Justicia"
	confess_lines = list(
		"RAVOX ES JUSTICIA!",
		"A TRAVES DEL CONFLICTO, LA GRACIA!",
		"LOS TAMBORES DE GUERRA RESUENAN EN MI PECHO!",
	)

/datum/patron/divine/necra
	name = "Necra"
	domain = "Diosa de la Muerte y el Mas Alla"
	desc = "Dama Velada del inframundo, igualmente temida y respetada por los mortales. Ella enseño a los mortales la inevitabilidad de la muerte y los cuida cuando alcanzan el mas alla."
	worshippers = "Los Muertos, Dolientes, Guardianes de Tumbas"
	mob_traits = list(TRAIT_SOUL_EXAMINE)
	t1 = /obj/effect/proc_holder/spell/invoked/avert
	t2 = /obj/effect/proc_holder/spell/targeted/abrogation
	t3 = /obj/effect/proc_holder/spell/targeted/soulspeak
	confess_lines = list(
		"TODAS LAS ALMAS VAN HACIA NECRA!",
		"LA DONCELLA SUBTERRANEA ES NUESTRO REPOSO FINAL!",
		"NO TEMO A LA MUERTE, MI DAMA ME ESPERA!",
	)

/datum/patron/divine/xylix
	name = "Xylix"
	domain = "Dios de la Travesura, la Libertad y la Inspiracion"
	desc = "El Dios Risueño, famoso e infame por su influencia sobre las fuerzas de la suerte. Se le conoce por inspirar las letras de muchos bardos. Se comunica a traves de su regalo para el hombre: la baraja del Tarot."
	worshippers = "Jugadores, Bardos, Artistas y los de Lengua Plateada"
	mob_traits = list(TRAIT_XYLIX)
	confess_lines = list(
		"ASTRATA ES MI LUZ!",
		"NOC ES LA NOCHE!",
		"DENDOR PROVEE!",
		"ABYSSOR DOMINA LAS OLAS!",
		"RAVOX ES JUSTICIA!",
		"TODAS LAS ALMAS VAN HACIA NECRA!",
		"JAJAJAJAJAJAJAJAJA!",
		"PESTRA ALIVIA TODOS LOS MALES!",
		"MALUM ES MI MUSA!",
		"EORA NOS UNE A TODOS!",
	)

/datum/patron/divine/pestra
	name = "Pestra"
	domain = "Diosa de la Decadencia, la Enfermedad y la Medicina"
	desc = "Diosa que bendijo a muchos santos con manos sanadoras, Pestra enseño al hombre las artes de la medicina y sus beneficios."
	worshippers = "Los Enfermos, Medicos, Boticarios"
	mob_traits = list(TRAIT_EMPATH, TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t1 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/attach_bodypart
	t4 = /obj/effect/proc_holder/spell/invoked/cure_rot
	confess_lines = list(
		"PESTRA ALIVIA TODOS LOS MALES!",
		"LA DECADENCIA ES UNA CONTINUACION DE LA VIDA!",
		"MI AFLICCION ES MI TESTAMENTO!",
	)

/datum/patron/divine/malum
	name = "Malum"
	domain = "Dios del Fuego, la Destruccion y el Renacimiento"
	desc = "Dios imparcial de los oficios. Enseña que grandes obras para matar o salvar son grandes obras de todos modos. La guillotina bien engrasada y el hacha bien afilada son herramientas, y no hay bien o mal en su oficio."
	worshippers = "Herreros, Mineros, Ingenieros"
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	confess_lines = list(
		"MALUM ES MI MUSA!",
		"EL VERDADERO VALOR ESTA EN EL ESFUERZO!",
		"SOY UN INSTRUMENTO DE LA CREACION!",
	)

/datum/patron/divine/eora
	name = "Eora"
	domain = "Diosa del Amor, la Vida y la Belleza"
	desc = "La mitad mas noble de Baotha, creada de amor ciego e incondicional. No tiene un atisbo de odio en su corazon y enseño a la humanidad el verdadero amor que incluso trasciende el alcance de Necra."
	worshippers = "Amantes, los inclinados al romance y Abuelos Cariñosos"
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/bud
	t2 = /obj/effect/proc_holder/spell/invoked/eoracurse
	t3 = null
	confess_lines = list(
		"EORA NOS UNE A TODOS!",
		"SU BELLEZA PERDURA INCLUSO EN ESTE TORMENTO!",
		"TE AMO, INCLUSO CUANDO ME OFENDES!",
	)

