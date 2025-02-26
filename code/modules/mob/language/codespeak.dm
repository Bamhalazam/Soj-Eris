var/cop_code_expire
var/cop_code_last

/proc/get_cop_code(holy = FALSE)
	var/cop_code_1 = pick("2", "10", "20", "0", "13")
	var/cop_code_2 = pick("1","4", "7", "8", "10", "13", "15", "17", "21", "22", "24", "33", "40", "55", "64", "75", "88", "99")
	var/cop_code_3 = pick("Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Sierra", "Uniform", "Youth On Skates")
	var/cop_code_holy = pick("Apostle ", "Bishop", "Chaplin", "Deacon", "Exclaustration", "Friars", "Seminarian", "Upanishads")

	var/cop_code_new
	if(holy)
		cop_code_new = "[cop_code_1]-[cop_code_2] [cop_code_holy]"
	else
		cop_code_new = "[cop_code_1]-[cop_code_2] [cop_code_3]"
	if(world.time < cop_code_expire)
		return cop_code_last
	else
		cop_code_expire = world.time + 3 // Just long enough for every hear_say, radio_hear and such to recieve the same code
		cop_code_last = cop_code_new
		return cop_code_new

/mob/living/carbon/human/
	var/codespeak_cooldown

/mob/living/carbon/human/proc/codesay(var/message, var/state_location, var/say_localy)
	var/prefix = get_prefix_key(/decl/prefix/radio_channel_selection)
	if(world.time < src.codespeak_cooldown)
		to_chat(src, "You can't do it so fast!")
	else if(state_location)
		var/area/area = get_area(src)
		var/location = initial(area.name) //No funny area renaming
		var/turf/T = get_turf(src)
		var/preposition = pick("in", "at")
		src.say("[prefix]s [message] [preposition] [location] at coordinates [T.x], [T.y], [T.z]@")
		codespeak_cooldown = world.time + 25
	else
		if(say_localy)
			src.say("[message]@")
			codespeak_cooldown = world.time + 25
		else
			src.say("[prefix]s [message]@")
			codespeak_cooldown = world.time + 25

/mob/living/carbon/human/proc/codespeak_help()
	set category = "Codespeak"
	set name = "MAYDAY"
	src.codesay("Need help", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_regroup()
	set category = "Codespeak"
	set name = "Regroup (location)"
	src.codesay("Regroup", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_moving_away()
	set category = "Codespeak"
	set name = "Pulling"
	src.codesay("Withdrawing from", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_moving()
	set category = "Codespeak"
	set name = "En route from (location)"
	src.codesay("En route", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_clear()
	set category = "Codespeak"
	set name = "Area clear"
	src.codesay("No hostiles", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_romch()
	set category = "Codespeak"
	set name = "Roaches"
	src.codesay("Roaches", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_spooders()
	set category = "Codespeak"
	set name = "Spiders"
	src.codesay("Spiders", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_bigspooders()
	set category = "Codespeak"
	set name = "Reaper Spider"
	src.codesay("Reaper spider", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_bigromch()
	set category = "Codespeak"
	set name = "Kaiser roach"
	src.codesay("Kaiser roach", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_serb()
	set category = "Codespeak"
	set name = "Hostile Void Wolves"
	src.codesay("Hostile Void Wolfs", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_commie()
	set category = "Codespeak"
	set name = "Excelsior Infiltrators"
	src.codesay("Excelsior infiltrators", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_carrion()
	set category = "Codespeak"
	set name = "Carrion"
	src.codesay("Carrion presence", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_mutant()
	set category = "Codespeak"
	set name = "Mutant"
	src.codesay("Unsanctioned organism", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_dead()
	set category = "Codespeak"
	set name = "Dead Person"
	src.codesay("Colonist flatlined", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_corpse()
	set category = "Codespeak"
	set name = "Wounded Person"
	src.codesay("Colonist wounded", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_criminal()
	set category = "Codespeak"
	set name = "Suspect"
	src.codesay("Located the suspect", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_unknown()
	set category = "Codespeak"
	set name = "Unknown Located"
	src.codesay("Located a unknown", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_status()
	set category = "Codespeak"
	set name = "Status?"
	src.codesay("What's the status?", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_shutup()
	set category = "Codespeak"
	set name = "Shut up"
	src.codesay("Unnecessary use of radio", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_understood()
	set category = "Codespeak"
	set name = "Ok"
	src.codesay("Affirmative", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_yes()
	set category = "Codespeak"
	set name = "Yes"
	src.codesay("Positive", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_no()
	set category = "Codespeak"
	set name = "No"
	src.codesay("Negative", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_detaining()
	set category = "Codespeak"
	set name = "Detaining Suspect"
	src.codesay("Detaining suspect", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_understood_local()
	set category = "Codespeak"
	set name = "(local) Ok"
	src.codesay("Affirmative", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_yes_local()
	set category = "Codespeak"
	set name = "(local) Yes"
	src.codesay("Positive", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_no_local()
	set category = "Codespeak"
	set name = "(local) No"
	src.codesay("Negative", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_warcrime_local()
	set category = "Codespeak"
	set name = "(local) Attack Lethal?"
	src.codesay("Proposing to Lethally engage.", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_detain_local()
	set category = "Codespeak"
	set name = "(local) Detaining"
	src.codesay("Detaining Suspect.", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_rules_of_engagmentn_local()
	set category = "Codespeak"
	set name = "(local) Non-Lethal Attack?"
	src.codesay("Proposing to Non-Lethally engage.", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_run_local()
	set category = "Codespeak"
	set name = "(local) Withdarw?"
	src.codesay("Proposing a tactical retreat.", FALSE, TRUE)

//Soj + New Codespeak

/mob/living/carbon/human/proc/codespeak_murderhobo()
	set category = "Codespeak"
	set name = "Armed Person"
	src.codesay("Armed Person at (location)", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_dead_crew()
	set category = "Codespeak"
	set name = "Crewmember - Dead"
	src.codesay("Dead crewmember located at", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_wounded_crew()
	set category = "Codespeak"
	set name = "Crewmember - Injured"
	src.codesay("Injured crewmember located at", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_dead_oper()
	set category = "Codespeak"
	set name = "Security - Dead"
	src.codesay("Dead security staff member located at", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_wounded_oper()
	set category = "Codespeak"
	set name = "Security - Injured"
	src.codesay("Critically injured security staff member located at", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_ban()
	set category = "Codespeak"
	set name = "Security - Injured"
	src.codesay("Prohibited presence within", TRUE, FALSE)

/mob/living/carbon/human/proc/codespeak_what()
	set category = "Codespeak"
	set name = "Clarification Required"
	src.codesay("Requesting clarification.", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_busted()
	set category = "Codespeak"
	set name = "Arrest Successful"
	src.codesay("Suspects in custody.", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_jailbreak()
	set category = "Codespeak"
	set name = "Custody Escape"
	src.codesay("Suspects have escaped custody.", FALSE, FALSE)

/mob/living/carbon/human/proc/codespeak_engage_local()
	set category = "Codespeak"
	set name = "(local) Engage?"
	src.codesay("Requesting permission to engage.", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_hold_local()

	set category = "Codespeak"
	set name = "(local) Hold"
	src.codesay("Hold position.", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_go_local()
	set category = "Codespeak"
	set name = "(local) Go"
	src.codesay("Move up.", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_stop_local()
	set category = "Codespeak"
	set name = "(local) Halt"
	src.codesay("STOP! Do not proceed, danger ahead.", FALSE, TRUE)

/mob/living/carbon/human/proc/codespeak_idiot_local()
	set category = "Codespeak"
	set name = "(local) Idiot"
	src.codesay("Idiot.", FALSE, TRUE)

//Serbian Codespeak

/mob/living/carbon/human/proc/sm_codespeak_moving_away()
	set category = "Codespeak"
	set name = "Pulling"
	src.codesay("Withdrawing from", FALSE, FALSE)

/mob/living/carbon/human/proc/sm_codespeak_dead_serb()
	set category = "Codespeak"
	set name = "Comrade - Dead"
	src.codesay("Dead comrade located at", TRUE, FALSE)

/mob/living/carbon/human/proc/sm_codespeak_wounded_serb()
	set category = "Codespeak"
	set name = "Comrade - Injured"
	src.codesay("Injured comrade located at", TRUE, FALSE)

/mob/living/carbon/human/proc/sm_codespeak_what()
	set category = "Codespeak"
	set name = "Clarification Required"
	src.codesay("Requesting clarification.", FALSE, FALSE)

/mob/living/carbon/human/proc/sm_codespeak_busted()
	set category = "Codespeak"
	set name = "Capture Successful"
	src.codesay("Target in custody.", FALSE, FALSE)

/mob/living/carbon/human/proc/sm_codespeak_jailbreak()
	set category = "Codespeak"
	set name = "Custody Escape"
	src.codesay("Targets have escaped custody.", FALSE, FALSE)

/mob/living/carbon/human/proc/sm_codespeak_engage_local()
	set category = "Codespeak"
	set name = "(local) Engage?"
	src.codesay("Requesting permission to engage.", FALSE, TRUE)

/mob/living/carbon/human/proc/sm_codespeak_hold_local()

	set category = "Codespeak"
	set name = "(local) Hold"
	src.codesay("Hold position.", FALSE, TRUE)

/mob/living/carbon/human/proc/sm_codespeak_go_local()
	set category = "Codespeak"
	set name = "(local) Go"
	src.codesay("Move up.", FALSE, TRUE)

/mob/living/carbon/human/proc/sm_codespeak_stop_local()
	set category = "Codespeak"
	set name = "(local) Halt"
	src.codesay("STOP! Do not proceed, danger ahead.", FALSE, TRUE)

/mob/living/carbon/human/proc/sm_codespeak_idiot_local()
	set category = "Codespeak"
	set name = "(local) Idiot"
	src.codesay("Idiot.", FALSE, TRUE)

