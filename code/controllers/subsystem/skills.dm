/*!
This subsystem mostly exists to populate and manage the skill singletons.
*/

SUBSYSTEM_DEF(skills)
	name = "Skills"
	flags = SS_NO_FIRE
	init_order = INIT_ORDER_SKILLS
	///Dictionary of skill.type || skill ref
	var/list/all_skills = list()
	///Static assoc list of levels (ints) - strings
	var/static/list/level_names = list(
		SKILL_LEVEL_NOVICE = span_info("<span class='small'>Novato</span>"),
		SKILL_LEVEL_APPRENTICE = span_info("Aprendiz"),
		SKILL_LEVEL_JOURNEYMAN = span_biginfo("Experimentado"),
		SKILL_LEVEL_EXPERT = span_biginfo("Experto"),
		SKILL_LEVEL_MASTER = "<b>Maestro</b>",
		SKILL_LEVEL_LEGENDARY = span_greentext("<b>Legendario</b>"),
	)//This list is already in the right order, due to indexing
	///Plain level names without the span
	var/static/list/level_names_plain = list(
		SKILL_LEVEL_NOVICE = "Novato",
		SKILL_LEVEL_APPRENTICE = "Aprendiz",
		SKILL_LEVEL_JOURNEYMAN = "Experimentado",
		SKILL_LEVEL_EXPERT = "Experto",
		SKILL_LEVEL_MASTER = "Maestro",
		SKILL_LEVEL_LEGENDARY = "Legendario",
	)

/datum/controller/subsystem/skills/Initialize(timeofday)
	InitializeSkills()
	return ..()

///Ran on initialize, populates the skills dictionary
/datum/controller/subsystem/skills/proc/InitializeSkills(timeofday)
	for(var/type in typesof(/datum/skill))
		if(is_abstract(type))
			continue
		var/datum/skill/ref = new type
		all_skills[type] = ref
