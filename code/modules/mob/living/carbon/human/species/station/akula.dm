/datum/species/akula
	name = SPECIES_AKULA
	name_plural = "Akuli"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/bite, /datum/unarmed_attack/punch)
	//blurb = "" - TODO

	icobase = 'icons/mob/human_races/r_sergal.dmi'
	//deform = 'icons/mob/human_races/r_def_sergal.dmi'

	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 70
	remains_type = /obj/item/remains/human

	darksight = 2
	bump_flag = HEAVY

	cold_level_1 = 270 //Default 270
	cold_level_2 = 240 //Default 230
	cold_level_3 = 210  //Default 200

	heat_level_1 = 340 //Default 330
	heat_level_2 = 380 //Default 380
	heat_level_3 = 470 //Default 460

	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR | HAS_SKIN_COLOR

	perks = list(PERK_RACIAL_AKULA)

	stat_modifiers = list(
		STAT_TGH = 5,
		STAT_ROB = 10)

/datum/species/akula/get_bodytype()
	return SPECIES_AKULA