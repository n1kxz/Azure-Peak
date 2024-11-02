// ROGUETRAITS (description when rmb skills button)
#define TRAIT_WEBWALK "Experto En Telarañas"
#define TRAIT_NOSTINK "Nariz Muerta"
#define TRAIT_ZJUMP "Saltos Altos"
#define TRAIT_JESTERPHOBIA "Fobia A Los Bufones"
#define TRAIT_XENOPHOBIC "Xenofobo"
#define TRAIT_TOLERANT "Tolerante"
#define TRAIT_LEAPER "Saltador"
#define TRAIT_NOSEGRAB "Abuson"
#define TRAIT_NUTCRACKER "Cascanueces"
#define TRAIT_SEEPRICES "Tasador Experto"
#define TRAIT_SEEPRICES_SHITTY "Tasador"
#define TRAIT_STRONGBITE "Fuerte Mordedor"
#define TRAIT_NOBLE "De Sangre Noble"
#define TRAIT_EMPATH "Empatico"
#define TRAIT_BREADY "Listo Para La Batalla"
#define TRAIT_MEDIUMARMOR "Entrenamiento De Malla"
#define TRAIT_HEAVYARMOR "Entrenamiento De Placas"
#define TRAIT_DODGEEXPERT "Reflejos Rapidos"
#define TRAIT_DECEIVING_MEEKNESS "Deceiving Meekness"
#define TRAIT_CRITICAL_RESISTANCE "Resistencia Critica"
#define TRAIT_CRITICAL_WEAKNESS "Debilidad Critica"
#define TRAIT_MANIAC_AWOKEN "Despertado!"
#define TRAIT_NOROGSTAM "Indefatigable" //for ai
#define TRAIT_NUDIST "Nudista" //you can't wear most clothes
#define TRAIT_CYCLOPS_LEFT "Ciclope (Izquierdo)" //poked left eye
#define TRAIT_CYCLOPS_RIGHT "Ciclope (Derecho)" //poked right eye
#define TRAIT_INHUMEN_ANATOMY "Anatomia Inhumana" //can't wear hats and shoes
#define TRAIT_NASTY_EATER "Digestion Inhumana" //can eat rotten food, organs, poison berries, and drink murky water
#define TRAIT_WILD_EATER "Digestion Bestial" //can eat raw and rotten food and drink murky water
#define TRAIT_NOFALLDAMAGE1 "Inmunidad Menor Al Daño De Caida"
#define TRAIT_NOFALLDAMAGE2 "Inmunidad TOTAL Al Daño De Caida"
#define TRAIT_MISSING_NOSE "Nariz Perdida" //halved stamina regeneration
#define TRAIT_DISFIGURED "Desfigurado"
#define TRAIT_SPELLCOCKBLOCK "Embrujado" //prevents spellcasting
#define TRAIT_ANTIMAGIC	"Anti-Magia"
#define TRAIT_ANTISCRYING "Non-Detection"
#define TRAIT_SHOCKIMMUNE "Inmunidad Al Shock"
#define TRAIT_NOSLEEP "Insomnia Fatal"
#define TRAIT_FASTSLEEP "Dormidor Veloz"
#define TRAIT_GOODLOVER "Amante De Fabula"
#define TRAIT_SEEDKNOW "Conocedor De La Semilla"
#define TRAIT_SQUIRE_REPAIR "Conocimiento De Escudero"
#define TRAIT_TRAINED_SMITH "Herrero Entrenado"
#define TRAIT_GUARDSMAN "Guardia Vigilante"
#define TRAIT_KNIGHTSMAN "Resistencia Real"

//Hearthstone port (Tracking)
#define TRAIT_PERFECT_TRACKER "Rastreador Experimentado" //Will always find any tracks and analyzes them perfectly.
#define TRAIT_NOCSIGHT "Bendicion De Noc" // I can see just a bit more clearly in darkness.
#define TRAIT_DEATHSIGHT "Veiled Whispers" // Is notified when a player character dies, but not told exactly where or how.
//Hearthstone/Azure end.

// ROGUEspecialTRAITS (description when rmb skills button)
#define TRAIT_CIVILIZEDBARBARIAN "Boxeador De La Taberna"
#define TRAIT_COMICSANS "Cara Irritante"
#define TRAIT_WATERBREATHING "Respirador Acuatico Profesional"

// PATRON GOD TRAITS
#define TRAIT_ROT_EATER "Bendicion De Pestra" //can eat rotten food
#define TRAIT_ORGAN_EATER "Bendicion De Graggar" //can eat organs
#define TRAIT_KNEESTINGER_IMMUNITY "Bendicion De Dendor"
#define TRAIT_SOUL_EXAMINE "Bendicion De Necra" //can check bodies to see if they have departed
#define TRAIT_CRACKHEAD "Bencidion De Baotha" //will never overdose
#define TRAIT_CHOSEN "El Elegido De Astrata"
#define TRAIT_ABYSSOR_SWIM "Bendicion De Abyssor" //less base fatigue drain when swimming
#define TRAIT_XYLIX "Bendicion De Xylix" //secret thieves cant language

// ASCENDANT CULTIST TRAITS (all of them recognize each other)
#define TRAIT_COMMIE "Bendicion De Matthios" //recognized by bandits as an ally
#define TRAIT_CABAL "De La Cabala" //Zizo cultists recognize each other too
#define TRAIT_HORDE "Ungido" //Graggarites also recognize each other
#define TRAIT_DEPRAVED "Caido" //Baothans also recognize each other

#define TRAIT_BASHDOORS "bashdoors"
#define TRAIT_NOMOOD "no_mood"
#define TRAIT_BAD_MOOD "Malhumorado"
#define TRAIT_NIGHT_OWL "Ave Nocturna"
#define TRAIT_BEAUTIFUL "Precioso"
#define TRAIT_SIMPLE_WOUNDS "simple_wounds"
#define TRAIT_BANDITCAMP "banditcamp"
#define TRAIT_VAMPMANSION "vampiremansion"
#define TRAIT_VAMP_DREAMS "vamp_dreams"
#define TRAIT_LIMPDICK "limp_dick"
#define TRAIT_SEXPASS "sexpass"
#define TRAIT_STEELHEARTED "steelhearted" //no bad mood from dismembering or seeing this
#define TRAIT_IWASREVIVED "iwasrevived" //prevents PQ gain from reviving the same person twice
#define TRAIT_IWASUNZOMBIFIED "iwasunzombified" //prevents PQ gain from curing a zombie twice
#define TRAIT_IWASHAUNTED "iwashaunted" //prevents spawning a haunt from a decapitated body twice
#define TRAIT_SCHIZO_AMBIENCE "schizo_ambience" //replaces all ambience with creepy shit
#define TRAIT_SCREENSHAKE "screenshake" //screen will always be shaking, you cannot stop it
#define TRAIT_NORUN "En Decadencia"
#define TRAIT_PUNISHMENT_CURSE "PunishmentCurse"
#define TRAIT_LEPROSY "Leproso"
#define TRAIT_NUDE_SLEEPER "Noche Desnuda"

GLOBAL_LIST_INIT(roguetraits, list(
	TRAIT_LEPROSY = span_necrosis("Soy un leproso asqueroso..."),
	TRAIT_GUARDSMAN = span_info("Estoy atento en mis guardias. En el pueblo de Azure Peak, mis habilidades son mas eficientes, y mis sentidos mas agudos."),
	TRAIT_CHOSEN = "Astrata te ha elegido para presentar su gloria.",
	TRAIT_WEBWALK = "Puedo moverme libremente en telarañas.",
	TRAIT_NOSTINK = span_dead("Mi nariz está entumecida ante el olor a descomposición.."),
	TRAIT_ZJUMP = "Puedo saltar hasta sitios altos.",
	TRAIT_JESTERPHOBIA = span_warning("Tengo un miedo irracional a los bufones... N-No hay ninguno por aqui cierto?"),
	TRAIT_XENOPHOBIC = span_warning("Las razas inferiores envenenan nuestras tierras!"),
	TRAIT_TOLERANT = span_info("Sueño con un futuro pacifico, donde todas las razas estan unidas!"),
	TRAIT_NIGHT_OWL = span_info("Que se puede decir? Siempre he sido una persona nocturna."),
	TRAIT_BEAUTIFUL = span_info("Por algun motivo la gente adora ver mi cara."),
	TRAIT_BAD_MOOD = span_warning("Todo parece enfadarme... Eh tu, que me has dicho?!"),
	TRAIT_LEAPER = "Salto y salto como una rana, sin cansarme ademas.",
	TRAIT_NOSEGRAB = "Me encanta agarrar a esos idiotas por la nariz, es para troncharse!",
	TRAIT_NUTCRACKER = "Me encanta patear a esos idiotas en las bolas, mira como se retuerce- Ha-ha!",
	TRAIT_SEEPRICES = "Puedo ver el precio de las cosas, hasta el ultimo zenny.",
	TRAIT_SEEPRICES_SHITTY = "Puedo ver el precio de las cosas... <i>Eeeeeh... Mas o menos?</i>.",
	TRAIT_STRONGBITE = "Tengo una mordida feroz, hago criticos al morder.",
	TRAIT_NOBLE = span_blue("Tengo sangre noble."),
	TRAIT_EMPATH = "Puedo notar cuando la gente siente dolor.",
	TRAIT_BREADY = "La estancia defensiva no me cansa de forma pasiva.",
	TRAIT_MEDIUMARMOR = "Puedo moverme libremente en armaduras medianas.",
	TRAIT_HEAVYARMOR = "Puedo moverme libremente en armaduras pesadas.",
	TRAIT_DODGEEXPERT = "Puedo esquivar facilmente si llevo una armadura ligera.",
	TRAIT_DECEIVING_MEEKNESS = "Puede que todos los que me miren piensen que soy un debilucho. Pero se equivocan.",
	TRAIT_CRITICAL_RESISTANCE = "Soy resistente ante las heridas que para otros serian mortales.",
	TRAIT_CRITICAL_WEAKNESS = span_danger("Soy debil ante las heridas que para otros serian leves.. A-Ayuda."),
	TRAIT_MANIAC_AWOKEN = span_danger("Estoy <b>DESPERTANDO</b> y estos borregos lo saben!. Intentaran oponer resistencia, pero podre escapar!."),
	TRAIT_NOROGSTAM = "Tengo una energia sin limites, nunca me cansare.",
	TRAIT_NUDIST = "Me <b>NIEGO</b> a llevar ropa. Son un obstaculo para mi libertad.",
	TRAIT_CYCLOPS_LEFT = span_warning("Mi ojo izquierdo ha sido arrancado..."),
	TRAIT_CYCLOPS_RIGHT = span_warning("Mi ojo derecho ha sido arrancado..."),
	TRAIT_INHUMEN_ANATOMY = "Mi anatomia es inhumana, lo que me impide llevar sobreros y zapatos... Espero que no haya cristales por aqui.",
	TRAIT_NASTY_EATER = span_dead("Puedo comer comida en mal estado, y el agua que seria letal para otros es completamente potable para mi."),
	TRAIT_WILD_EATER = span_info("Puedo comer carne cruda y agua sucia."),
	TRAIT_NOFALLDAMAGE1 = span_warning("Puedo facilmente resistir caidas leves."),
	TRAIT_NOFALLDAMAGE2 = span_warning("Puedo aguantar el daño de <b>CUALQUIER<b> caida."),
	TRAIT_DISFIGURED = span_warning("Nadie puede reconocerme..."),
	TRAIT_MISSING_NOSE = span_warning("Me cuesta respirar."),
	TRAIT_SPELLCOCKBLOCK = span_warning("Desde que esa gitana me puso un mal de ojo no puedo conjurar hechizos."),
	TRAIT_ANTIMAGIC = "Soy inmune a todo tipo de magia.",
	TRAIT_ANTISCRYING = "Soy inmune a la mayoría de las formas de adivinación mágica.",
	TRAIT_SHOCKIMMUNE = "Soy inmune a los shocks electricos.",
	TRAIT_NOSLEEP = span_warning("Llevo semanas sin dormir, y no parece que eso vaya a acabar ahora.<b>NO PUEDO DORMIR<b>."),
	TRAIT_ROT_EATER = span_necrosis("Puedo comer comida podrida."),
	TRAIT_ORGAN_EATER = span_bloody("Puedo comer organos y carne cruda... A quien le apetece bufon a la plancha?"),
	TRAIT_KNEESTINGER_IMMUNITY = "Soy inmune al shock de los aguijones.",
	TRAIT_SOUL_EXAMINE = span_deadsay("Puedo saber cuando la alma de alguien ha ido al mas alla."),
	TRAIT_CRACKHEAD = span_love("Puedo meterme todas las drogas que quiera, nunca tendre una sobredosis!"),
	TRAIT_COMMIE = span_bloody("Puedo reconocer a otros hombres libres, y ellos pueden reconocerme tambien."),
	TRAIT_NORUN = span_warning("Mi cuerpo se ha atrofiado en mi estado de decadencia; las articulaciones de mis piernas simplemente ya no tienen la fuerza ni la durabilidad para correr"),
	TRAIT_GOODLOVER = span_love("Es algo afortunado que comparta una cama con alguien."),
	TRAIT_SEEDKNOW = span_info("Sé qué semillas producen qué cultivos.."),
	TRAIT_PERFECT_TRACKER = span_info("Soy el rastreador perfecto. Ninguna pista engañará a mis ojos ni me ocultará sus secretos."),//Hearthstone port.
	TRAIT_NOCSIGHT = span_info("Noc bendijo mis ojos para que no tuvieran que cargar con la noche.."), //Hearthstone change.
	TRAIT_CIVILIZEDBARBARIAN = span_info("Mis puños son mas fuertes."),
	TRAIT_COMICSANS = span_sans("Estoy maldito con una voz rara."),
	TRAIT_SQUIRE_REPAIR = span_info("Conozco bien las herramientas de mi Maestro."),
	TRAIT_WATERBREATHING = span_info("No me ahogo en el agua."),
	TRAIT_NUDE_SLEEPER = span_warning("No puedo dormir a menos que me quite toda la ropa."),
	TRAIT_ABYSSOR_SWIM = "Me canso mucho menos al nadar que el resto de gente.",
	TRAIT_LONGSTRIDER = "Cada uno de mis pasos encuentra su equilibrio sin importar lo traicionero que sea el terreno.",
	TRAIT_TRAINED_SMITH = span_info("He pasado mucho tiempo entrenando y, con un poco más, podré forjar objetos legendarios."),
	TRAIT_DEATHSIGHT = span_info("Puedo saber cuando alguien se fue a mejor vida."),
	TRAIT_XYLIX = span_info("Sé hablar en código que sólo otros seguidores de Xylix pueden entender."),
	TRAIT_CABAL = span_info("En secreto, he estudiado los caminos de su ascensión, y conozco a otros miembros de la Cabala."),
	TRAIT_HORDE = span_info("DE SANGRE Y HUESO. SOY DEVOTO DE GRAGGAR! SIENTO LA FUERZA EN OTROS QUE SON IGUALES."),
	TRAIT_DEPRAVED = span_info("TEl lánguido olor de su libertinaje me resulta conocido, y puedo detectar su sórdida presencia en los demás.")
))

// trait accessor defines
#define ADD_TRAIT(target, trait, source) \
	do { \
		var/list/_L; \
		if (!target.status_traits) { \
			target.status_traits = list(); \
			_L = target.status_traits; \
			_L[trait] = list(source); \
		} else { \
			_L = target.status_traits; \
			if (_L[trait]) { \
				_L[trait] |= list(source); \
			} else { \
				_L[trait] = list(source); \
			} \
		} \
	} while (0)
#define REMOVE_TRAIT(target, trait, sources) \
	do { \
		var/list/_L = target.status_traits; \
		var/list/_S; \
		if (sources && !islist(sources)) { \
			_S = list(sources); \
		} else { \
			_S = sources\
		}; \
		if (_L && _L[trait]) { \
			for (var/_T in _L[trait]) { \
				if ((!_S && (_T != ROUNDSTART_TRAIT)) || (_T in _S)) { \
					_L[trait] -= _T \
				} \
			};\
			if (!length(_L[trait])) { \
				_L -= trait \
			}; \
			if (!length(_L)) { \
				target.status_traits = null \
			}; \
		} \
	} while (0)
#define REMOVE_TRAITS_NOT_IN(target, sources) \
	do { \
		var/list/_L = target.status_traits; \
		var/list/_S = sources; \
		if (_L) { \
			for (var/_T in _L) { \
				_L[_T] &= _S;\
				if (!length(_L[_T])) { \
					_L -= _T } \
				};\
				if (!length(_L)) { \
					target.status_traits = null\
				};\
		}\
	} while (0)
#define HAS_TRAIT(target, trait) (target.status_traits ? (target.status_traits[trait] ? TRUE : FALSE) : FALSE)
#define HAS_TRAIT_FROM(target, trait, source) (target.status_traits ? (target.status_traits[trait] ? (source in target.status_traits[trait]) : FALSE) : FALSE)

/*
Remember to update _globalvars/traits.dm if you're adding/removing/renaming traits.
*/

//mob traits
#define TRAIT_BLIND 			"blind"
#define TRAIT_MUTE				"mute"
#define TRAIT_ZOMBIE_SPEECH 	"zombie_speech"
#define TRAIT_GARGLE_SPEECH		"gargle_speech"
#define TRAIT_EMOTEMUTE			"emotemute"
#define TRAIT_DEAF				"deaf"
#define TRAIT_NEARSIGHT			"nearsighted"
#define TRAIT_FAT				"fat"
#define TRAIT_HUSK				"husk"
#define TRAIT_BADDNA			"baddna"
#define TRAIT_CLUMSY			"clumsy"
#define TRAIT_CHUNKYFINGERS		"chunkyfingers" //means that you can't use weapons with normal trigger guards.
#define TRAIT_DUMB				"dumb"
#define TRAIT_MONKEYLIKE		"monkeylike" //sets IsAdvancedToolUser to FALSE
#define TRAIT_PACIFISM			"pacifism"
#define TRAIT_IGNORESLOWDOWN	"ignoreslow"
#define TRAIT_IGNOREDAMAGESLOWDOWN "ignoredamageslowdown"
#define TRAIT_DEATHCOMA			"deathcoma" //Causes death-like unconsciousness
#define TRAIT_FAKEDEATH			"fakedeath" //Makes the owner appear as dead to most forms of medical examination
#define TRAIT_XENO_HOST			"xeno_host"	//Tracks whether we're gonna be a baby alien's mummy.
#define TRAIT_STUNIMMUNE		"stun_immunity"
#define TRAIT_STUNRESISTANCE    "stun_resistance"
#define TRAIT_SLEEPIMMUNE		"sleep_immunity"
#define TRAIT_PUSHIMMUNE		"push_immunity"
#define TRAIT_STABLEHEART		"stable_heart"
#define TRAIT_STABLELIVER		"stable_liver"
#define TRAIT_NOPAINSTUN		"no_pain-stun"
#define TRAIT_RESISTHEAT		"resist_heat"
#define TRAIT_RESISTHEATHANDS	"resist_heat_handsonly" //For when you want to be able to touch hot things, but still want fire to be an issue.
#define TRAIT_RESISTCOLD		"resist_cold"
#define TRAIT_RESISTHIGHPRESSURE	"resist_high_pressure"
#define TRAIT_RESISTLOWPRESSURE	"resist_low_pressure"
#define TRAIT_RADIMMUNE			"rad_immunity"
#define TRAIT_VIRUSIMMUNE		"virus_immunity"
#define TRAIT_PIERCEIMMUNE		"pierce_immunity"
#define TRAIT_NODISMEMBER		"dismember_immunity"
#define TRAIT_NOFIRE			"nonflammable"
#define TRAIT_NOGUNS			"no_guns"
#define TRAIT_NOHUNGER			"no_hunger"
#define TRAIT_NOMETABOLISM		"no_metabolism"
#define TRAIT_TOXIMMUNE			"toxin_immune"
#define TRAIT_HARDDISMEMBER		"hard_dismember"
#define TRAIT_EASYDISMEMBER		"easy_dismember"
#define TRAIT_LIMBATTACHMENT 	"limb_attach"
#define TRAIT_NOLIMBDISABLE		"no_limb_disable"
#define TRAIT_EASYLIMBDISABLE	"easy_limb_disable"
#define TRAIT_TOXINLOVER		"toxinlover"
#define TRAIT_NOBREATH			"no_breath"
#define TRAIT_HOLDBREATH		"hold_breath"
#define TRAIT_HOLY				"holy"
#define TRAIT_DEPRESSION		"depression"
#define TRAIT_JOLLY				"jolly"
#define TRAIT_NOCRITDAMAGE		"no_crit"
#define TRAIT_NOSLIPWATER		"noslip_water"
#define TRAIT_NOSLIPALL			"noslip_all"
#define TRAIT_NODEATH			"nodeath"
#define TRAIT_NOHARDCRIT		"nohardcrit"
#define TRAIT_NOSOFTCRIT		"nosoftcrit"
#define TRAIT_MINDSHIELD		"mindshield"
#define TRAIT_DISSECTED			"dissected"
#define TRAIT_SIXTHSENSE		"sixth_sense" //I can hear dead people
#define TRAIT_FEARLESS			"fearless"
#define TRAIT_PARALYSIS_L_ARM	"para-l-arm" //These are used for brain-based paralysis, where replacing the limb won't fix it
#define TRAIT_PARALYSIS_R_ARM	"para-r-arm"
#define TRAIT_PARALYSIS_L_LEG	"para-l-leg"
#define TRAIT_PARALYSIS_R_LEG	"para-r-leg"
#define TRAIT_CANNOT_OPEN_PRESENTS "cannot-open-presents"
#define TRAIT_PRESENT_VISION    "present-vision"
#define TRAIT_DISK_VERIFIER     "disk-verifier"
#define TRAIT_NOMOBSWAP         "no-mob-swap"
#define TRAIT_XRAY_VISION       "xray_vision"
#define TRAIT_THERMAL_VISION    "thermal_vision"
#define TRAIT_ABDUCTOR_TRAINING "abductor-training"
#define TRAIT_ABDUCTOR_SCIENTIST_TRAINING "abductor-scientist-training"
#define TRAIT_SURGEON           "surgeon"
#define TRAIT_STRONG_GRABBER	"strong_grabber"
#define TRAIT_MAGIC_CHOKE		"magic_choke"
#define TRAIT_SOOTHED_THROAT    "soothed-throat"
#define TRAIT_LAW_ENFORCEMENT_METABOLISM "law-enforcement-metabolism"
#define TRAIT_ALWAYS_CLEAN      "always-clean"
#define TRAIT_BOOZE_SLIDER      "booze-slider"
#define TRAIT_QUICK_CARRY		"quick-carry"
#define TRAIT_QUICKER_CARRY		"quicker-carry"
#define TRAIT_UNINTELLIGIBLE_SPEECH "unintelligible-speech"
#define TRAIT_LANGUAGE_BARRIER	"language-barrier"
#define TRAIT_UNSTABLE			"unstable"
#define TRAIT_OIL_FRIED			"oil_fried"
#define TRAIT_MEDICAL_HUD		"med_hud"
#define TRAIT_SECURITY_HUD		"sec_hud"
#define TRAIT_MEDIBOTCOMINGTHROUGH "medbot" //Is a medbot healing you
#define TRAIT_PASSTABLE			"passtable"
#define TRAIT_NOFLASH			"noflash" //Makes you immune to flashes
#define TRAIT_XENO_IMMUNE		"xeno_immune"//prevents xeno huggies implanting skeletons
#define TRAIT_NOPAIN			"no_pain"
#define TRAIT_DRUQK				"druqk"
#define TRAIT_BURIED_COIN_GIVEN "buried_coin_given" // prevents a human corpse from being used for a corpse multiple times
#define TRAIT_BLOODLOSS_IMMUNE "bloodloss_immune" // can bleed, but will never die from blood loss
#define TRAIT_ROTMAN "rotman" //you are a rotman and need occasional maintenance
#define TRAIT_ZOMBIE_IMMUNE "zombie_immune" //immune to zombie infection
#define TRAIT_NO_BITE "no_bite" //prevents biting

//bodypart traits
#define TRAIT_PARALYSIS	"paralysis" //Used for limb-based paralysis and full body paralysis
#define TRAIT_BRITTLE "brittle" //The limb is more susceptible to fractures
#define TRAIT_FINGERLESS "fingerless" //The limb has no fingies

//item traits
#define TRAIT_NODROP            "nodrop"
#define TRAIT_NOEMBED			"noembed"
#define TRAIT_T_RAY_VISIBLE     "t-ray-visible" // Visible on t-ray scanners if the atom/var/level == 1
#define TRAIT_NO_TELEPORT		"no-teleport" //you just can't

//quirk traits
#define TRAIT_ALCOHOL_TOLERANCE	"alcohol_tolerance"
#define TRAIT_AGEUSIA			"ageusia"
#define TRAIT_HEAVY_SLEEPER		"heavy_sleeper"
#define TRAIT_NIGHT_VISION		"night_vision"
#define TRAIT_LIGHT_STEP		"light_step"
#define TRAIT_SPIRITUAL			"spiritual"
#define TRAIT_FAN_CLOWN			"fan_clown"
#define TRAIT_FAN_MIME			"fan_mime"
#define TRAIT_VORACIOUS			"voracious"
#define TRAIT_SELF_AWARE		"self_aware"
#define TRAIT_FREERUNNING		"freerunning"
#define TRAIT_SKITTISH			"skittish"
#define TRAIT_POOR_AIM			"poor_aim"
#define TRAIT_PROSOPAGNOSIA		"prosopagnosia"
#define TRAIT_DRUNK_HEALING		"drunk_healing"
#define TRAIT_TAGGER			"tagger"
#define TRAIT_PHOTOGRAPHER		"photographer"
#define TRAIT_MUSICIAN			"musician"
#define TRAIT_LIGHT_DRINKER		"light_drinker"
#define TRAIT_FRIENDLY			"friendly"
#define TRAIT_GRABWEAKNESS		"grab_weakness"
#define TRAIT_SNOB				"snob"

// common trait sources
#define TRAIT_GENERIC "generic"
#define UNCONSCIOUS_BLIND "unconscious_blind"
#define EYE_DAMAGE "eye_damage"
#define GENETIC_MUTATION "genetic"
#define OBESITY "obesity"
#define MAGIC_TRAIT "magic"
#define TRAUMA_TRAIT "trauma"
#define DISEASE_TRAIT "disease"
#define SPECIES_TRAIT "species"
#define ORGAN_TRAIT "organ"
#define CRIT_TRAIT "crit"
#define ROUNDSTART_TRAIT "roundstart" //cannot be removed without admin intervention
#define JOB_TRAIT "job"
#define CYBORG_ITEM_TRAIT "cyborg-item"
#define ADMIN_TRAIT "admin" // (B)admins only.
#define CHANGELING_TRAIT "changeling"
#define CULT_TRAIT "cult"
#define CURSED_ITEM_TRAIT "cursed-item" // The item is magically cursed
#define ABSTRACT_ITEM_TRAIT "abstract-item"
#define STATUS_EFFECT_TRAIT "status-effect"
#define CLOTHING_TRAIT "clothing"
#define HELMET_TRAIT "helmet"
#define GLASSES_TRAIT "glasses"
#define VEHICLE_TRAIT "vehicle" // inherited from riding vehicles
#define INNATE_TRAIT "innate"

// unique trait sources, still defines
#define TRAIT_LONGSTRIDER "longstrider"
#define TRAIT_DARKVISION "darkvision"
#define CLONING_POD_TRAIT "cloning-pod"
#define STATUE_MUTE "statue"
#define CHANGELING_DRAIN "drain"
#define CHANGELING_HIVEMIND_MUTE "ling_mute"
#define ABYSSAL_GAZE_BLIND "abyssal_gaze"
#define HIGHLANDER "highlander"
#define TRAIT_HULK "hulk"
#define STASIS_MUTE "stasis"
#define GENETICS_SPELL "genetics_spell"
#define EYES_COVERED "eyes_covered"
#define CULT_EYES "cult_eyes"
#define TRAIT_SANTA "santa"
#define SCRYING_ORB "scrying-orb"
#define ABDUCTOR_ANTAGONIST "abductor-antagonist"
#define NUKEOP_TRAIT "nuke-op"
#define DEATHSQUAD_TRAIT "deathsquad"
#define MEGAFAUNA_TRAIT "megafauna"
#define CLOWN_NUKE_TRAIT "clown-nuke"
#define STICKY_MOUSTACHE_TRAIT "sticky-moustache"
#define CHAINSAW_FRENZY_TRAIT "chainsaw-frenzy"
#define CHRONO_GUN_TRAIT "chrono-gun"
#define REVERSE_BEAR_TRAP_TRAIT "reverse-bear-trap"
#define CURSED_MASK_TRAIT "cursed-mask"
#define HIS_GRACE_TRAIT "his-grace"
#define HAND_REPLACEMENT_TRAIT "magic-hand"
#define HOT_POTATO_TRAIT "hot-potato"
#define SABRE_SUICIDE_TRAIT "sabre-suicide"
#define ABDUCTOR_VEST_TRAIT "abductor-vest"
#define CAPTURE_THE_FLAG_TRAIT "capture-the-flag"
#define EYE_OF_GOD_TRAIT "eye-of-god"
#define SHAMEBRERO_TRAIT "shamebrero"
#define CHRONOSUIT_TRAIT "chronosuit"
#define LOCKED_HELMET_TRAIT "locked-helmet"
#define NINJA_SUIT_TRAIT "ninja-suit"
#define ANTI_DROP_IMPLANT_TRAIT "anti-drop-implant"
#define SLEEPING_CARP_TRAIT "sleeping_carp"
#define MADE_UNCLONEABLE "made-uncloneable"
#define TIMESTOP_TRAIT "timestop"
#define HUGBOX_TRAIT "hugbox"
#define ADVENTURER_TRAIT "adventurer"
