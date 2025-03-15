/datum/species/marqua
	name = SPECIES_MARQUA
	name_plural = "Mar'Qua"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch)
	//blurb = "Mar'Qua"

	icobase = 'icons/mob/human_races/r_marqua.dmi'
	//deform = 'icons/mob/human_races/r_def_skrell_white.dmi'

	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 185
	remains_type = /obj/item/remains/human

	darksight = 4 // Complex mono-eye!

	base_color = "#5f92c2"

	cold_level_1 = 280  //Default 270
	cold_level_2 = 245  //Default 230
	cold_level_3 = 215  //Default 200

	heat_level_1 = 330  //Default 330
	heat_level_2 = 380  //Default 380
	heat_level_3 = 460  //Default 460

	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_SKIN_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR

	perks = list(PERK_RACIAL_MARQUA)

	stat_modifiers = list(
		STAT_COG = 15,
		STAT_BIO = 15,
		STAT_TGH = -15,
		STAT_ROB = -5)

/datum/species/marqua/get_bodytype()
	return SPECIES_MARQUA