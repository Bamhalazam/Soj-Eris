/datum/species/naramad
	name = SPECIES_SABLEKYNE
	name_plural = "Naramads"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)
	//blurb = ""
	icobase = 'icons/mob/human_races/r_fennec_white.dmi'
	//deform = 'icons/mob/human_races/r_fennec_white.dmi'

	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 75
	remains_type = /obj/item/remains/human

	darksight = 3

	permitted_ears  = list("Naramad Ears", "Sleek Ears")
	permitted_tail  = list("Naramad Tail", "Naramad Tail 2")
	permitted_wings = list()

	cold_level_1 = 285 //Default 270
	cold_level_2 = 245 //Default 230
	cold_level_3 = 215  //Default 200

	heat_level_1 = 345 //Default 330
	heat_level_2 = 395 //Default 380
	heat_level_3 = 475 //Default 460

	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR | HAS_SKIN_COLOR

	perks = list(PERK_RACIAL_NARAMAD)

	stat_modifiers = list(
		STAT_TGH = 10,
		STAT_ROB = 10,
        STAT_COG = -20
	)

/datum/species/naramad/get_bodytype()
	return SPECIES_NARAMAD