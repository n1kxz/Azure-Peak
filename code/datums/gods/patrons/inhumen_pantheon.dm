/datum/patron/inhumen
	name = null
	associated_faith = /datum/faith/inhumen
	undead_hater = FALSE
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	confess_lines = list(
		"PSYDON ES EL DEMIURGO!",
		"LOS DIEZ SON COBARDES!",
		"LOS DIEZ SON VEN HUMOS!",
	)

/datum/patron/inhumen/zizo
	name = "Zizo"
	domain = "Avance, Arrogancia, Magia de la mano izquierda"
	desc = "Elfa de las Nieves convertida en Diosa: desterrada por Los Diez por difundir magias impias y ciencias prohibidas. Su arte enseño a los mortales a doblegar el mundo natural a su voluntad, pero destruyo la raza de los elfos de las nieves..."
	worshippers = "Nigromantes, Brujos y los No Muertos"
	mob_traits = list(TRAIT_CABAL)
	t1 = /obj/effect/proc_holder/spell/invoked/projectile/profane/miracle
	t2 = /obj/effect/proc_holder/spell/invoked/raise_lesser_undead/miracle
	t3 = /obj/effect/proc_holder/spell/invoked/rituos/miracle
	confess_lines = list(
		"ALABADO SEA ZIZO!",
		"LARGA VIDA A ZIZO!",
		"ZIZO ES UNA REINA!",
	)

/datum/patron/inhumen/graggar
	name = "Graggar"
	domain = "Dios de la conquista, La guerra, El asesinato y el saqueo."
	desc = "Orco convertido en deidad, segun el Santo Eclesiastico, bendecido por el propio Ravox. Utilizo sus bendiciones para arrasar y derribar a los Diez Antiguos. Aunque a algunos graggarios les puede importar el 'honor', a la mayoría no: lo que importa son los resultados y la victoria a cualquier precio.."
	worshippers = "Prisioneros, Asesinos y los Crueles"
	mob_traits = list(TRAIT_HORDE, TRAIT_ORGAN_EATER)
	confess_lines = list(
		"GRAGGAR ES LA BESTIA QUE ADORO!",
		"JUNTO A LA VIOLENCIA, LA DIVINIDAD!",
		"EL DIOS DE LA CONQUISTA DEMANDA SANGRE!",
	)

/datum/patron/inhumen/matthios
	name = "Matthios"
	domain = "Dios del robo, La redistribucion de la riqueza y El comercio"
	desc = "El Hombre que robo el fuego del Inframundo y lo entrego a cambio de adoracion; la primera Transaccion, cortando un agujero en el firmamento e inundando la realidad ontologica con el hecho de la Riqueza. Quitarle a los ricos, darle a los que no valen nada, empoderar."
	worshippers = "Salteadores de Diliguencias, Ladrones, Campesinos Oprimidos, Comerciantes"
	mob_traits = list(TRAIT_COMMIE)
	confess_lines = list(
		"MATTHIOS ROBA DE LOS QUE NO MERECEN RIQUEZA!",
		"MATTHIOS ES JUSTICIA!",
		"MATTHIOS ES MI SEÑOR!",
	)

/datum/patron/inhumen/baotha
	name = "Baotha"
	domain = "Goddess of Degeneracy, Debauchery and Addiction"
	desc = "La mitad mas cruel de Eora, que se separo de su unico y verdadero amor tras haberle sido infiel. Llena de amargura, se separo de Eora en espiritu y se hundio en un oscuro agujero de hedonismo paralizante. Enseña a los de su calaña a no depositar su confianza en nadie y a hacer solo lo que les plazca.."
	worshippers = "Pervertidos, Apostadores, Alcoholicos, y Bardos"
	mob_traits = list(TRAIT_DEPRAVED, TRAIT_CRACKHEAD)
	confess_lines = list(
		"BAOTHA DEMANDA PLACER!",
		"VIVE, RIE, AMA!",
		"BAOTHA ES MI ALEGRIA!",
	)


/* RATWOOD EDIT - Back to the main pantheon
/datum/patron/inhumen/eora
	name = "Eora"
	domain = "Goddess of Degeneracy, Debauchery and Addiction"
	desc = "The Fallen Daughter of Psydon, once used to be a goddess of love and family but has now fallen from grace as she leads mortals to hedonism."
	worshippers = "Drunkards, Junkies, Gamblers and Bards"
	confess_lines = list(
		"EORA BRINGS ME PLEASURE!",
		"EORA BRINGS ME LUCK!",
		"EORA IS MY HAPPINESS!",
	)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
*/
