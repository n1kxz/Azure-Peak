/datum/status_effect/mood
	id = "mood"

/datum/status_effect/mood/bad
	id = "mood"
	effectedstats = list("fortune" = -1)
	alert_type = /atom/movable/screen/alert/status_effect/moodbad

/atom/movable/screen/alert/status_effect/moodbad
	name = "Estresado"
	desc = ""
	icon_state = "stressb"

/datum/status_effect/mood/vbad
	id = "mood"
	effectedstats = list("fortune" = -2)
	alert_type = /atom/movable/screen/alert/status_effect/moodvbad

/atom/movable/screen/alert/status_effect/moodvbad
	name = "Maximo Estres"
	desc = ""
	icon_state = "stressvb"

/datum/status_effect/mood/good
	id = "mood"
	effectedstats = list("fortune" = 1)
	alert_type = /atom/movable/screen/alert/status_effect/moodgood

/atom/movable/screen/alert/status_effect/moodgood
	name = "Paz Interior"
	desc = ""
	icon_state = "stressg"

/datum/status_effect/mood/vgood
	id = "mood"
	effectedstats = list("fortune" = 2)
	alert_type = /atom/movable/screen/alert/status_effect/moodvgood

/atom/movable/screen/alert/status_effect/moodvgood
	name = "Maxima Paz"
	desc = ""
	icon_state = "stressvg"
