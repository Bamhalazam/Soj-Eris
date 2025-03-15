/datum/species/cindarite
	name = SPECIES_CINDARITE
	name_plural = "Cindarites"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/bite, /datum/unarmed_attack/punch)
	//blurb = "" - TODO

	icobase = 'icons/mob/human_races/r_lizard.dmi'
	//deform = 'icons/mob/human_races/r_def_lizard.dmi'

	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 70
	remains_type = /obj/item/remains/human

	permitted_ears  = list("Frills, Aquatic",
		"Frills, Drake",
		"Frills, Short",
		"Frills, Simple",
		"Frills, Big"
		)
	permitted_tail  = list("Render Tail",
		"Snake Tail",
		"Lizard Tail",
		"Lizard Tail, Short",
		"Lizard Tail, Dark Tiger"
		)
	permitted_wings = list("Spines, Aquatic",
		"Spines, Long",
		"Spines, Long Membrane",
		"Spines, Short",
		"Spines, Short Membrane",
		)

	darksight = 3

	cold_level_1 = 285 //Default 270
	cold_level_2 = 245 //Default 230
	cold_level_3 = 215  //Default 200

	heat_level_1 = 380 //Default 330
	heat_level_2 = 430 //Default 380
	heat_level_3 = 510 //Default 460

	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR | HAS_SKIN_COLOR

	perks = list(PERK_RACIAL_CINDARITE)

	stat_modifiers = list(
		STAT_TGH = 15,
		STAT_ROB = 5,
        STAT_INT = -10)

/datum/species/cindarite/get_bodytype()
	return SPECIES_CINDARITE