/datum/species/kriosan
	name = SPECIES_KRIOSAN
	name_plural = "Kriosans"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	//blurb = "" - TODO

	icobase = 'icons/mob/human_races/r_vulpkanin.dmi'
	//deform = 'icons/mob/human_races/r_def_vulpkanin.dmi'

	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 90
	remains_type = /obj/item/remains/human

	darksight = 3

	permitted_ears  = list("Fennec Ears",
		"Fox Ears",
		"Hound Ears",
		"Jagged Ears",
		"Kitsune Ears",
		"Doberman Ears",
		"Sleek Ears",
		"Vulpkanin Ears",
		"Wolf Ears"
		)
	permitted_tail  = list("Cross Fox Tail",
		"Curly Tail",
		"Docked Tail",
		"Fennec Tail, Downwards",
		"Fennec Tail, Upwards",
		"Fennecsune Tails",
		"Fennix Tail",
		"Fox Tail, Downwards",
		"Fox Tail, Upwards",
		"Otie Tail",
		"Vulpkanin Tail",
		"Vulpkanin Tail 2",
		"Vulpkanin Tail 3",
		"Wolf Tail",
		"Jackal Tail"
		)

	cold_level_1 = 220 //Default 270
	cold_level_2 = 190 //Default 230
	cold_level_3 = 160  //Default 200

	heat_level_1 = 330 //Default 330
	heat_level_2 = 380 //Default 380
	heat_level_3 = 460 //Default 460

	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR | HAS_SKIN_COLOR

	perks = list(PERK_RACIAL_KRIOSAN)

	stat_modifiers = list(
		STAT_TGH = 5,
		STAT_ROB = 5,
        STAT_VIG = 5)

/datum/species/kriosan/get_bodytype()
	return SPECIES_KRIOSAN