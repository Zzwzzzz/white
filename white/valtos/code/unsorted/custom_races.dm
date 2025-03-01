/obj/item/bodypart/var/should_draw_custom_android = FALSE

/mob/living/carbon/proc/draw_white_parts(undo = FALSE)
	if(!undo)
		for(var/O in bodyparts)
			var/obj/item/bodypart/B = O
			B.should_draw_custom_android = TRUE
	else
		for(var/O in bodyparts)
			var/obj/item/bodypart/B = O
			B.should_draw_custom_android = FALSE

/////////////////////////////////////////////////////////////////////////////////////////

/mob/living/carbon/human/species/android/athena
	race = /datum/species/android/athena

/datum/species/android/athena
	name = "Athena"
	id = "athena_s"
	limbs_id = null

/datum/species/android/athena/on_species_gain(mob/living/carbon/C)
	. = ..()
	C.draw_white_parts()
	C.update_body()

/////////////////////////////////////////////////////////////////////////////////////////

/mob/living/carbon/human/species/android/aandroid
	race = /datum/species/android/aandroid

/datum/species/android/aandroid
	name = "A-Android"
	id = "aandroid"
	limbs_id = null

/datum/species/android/aandroid/on_species_gain(mob/living/carbon/C)
	. = ..()
	C.draw_white_parts()
	C.update_body()

/////////////////////////////////////////////////////////////////////////////////////////

/mob/living/carbon/human/species/android/oni_android
	race = /datum/species/android/oni_android

/datum/species/android/oni_android
	name = "Oni Android"
	id = "oni"
	limbs_id = null
	species_traits = list(NOBLOOD, NOEYESPRITES)
	mutant_organs = list(/obj/item/organ/tail/cat/oni_android)
	mutant_bodyparts = list("tail_human" = "Oni")

/datum/species/android/oni_android/on_species_gain(mob/living/carbon/C)
	. = ..()
	C.draw_white_parts()
	C.update_body()

/datum/species/android/oni_android/can_wag_tail(mob/living/carbon/human/H)
	return mutant_bodyparts["tail_human"] || mutant_bodyparts["waggingtail_human"]

/datum/species/android/oni_android/is_wagging_tail(mob/living/carbon/human/H)
	return mutant_bodyparts["waggingtail_human"]

/datum/species/android/oni_android/start_wagging_tail(mob/living/carbon/human/H)
	if(mutant_bodyparts["tail_human"])
		mutant_bodyparts["waggingtail_human"] = mutant_bodyparts["tail_human"]
		mutant_bodyparts -= "tail_human"
	H.update_body()

/datum/species/android/oni_android/stop_wagging_tail(mob/living/carbon/human/H)
	if(mutant_bodyparts["waggingtail_human"])
		mutant_bodyparts["tail_human"] = mutant_bodyparts["waggingtail_human"]
		mutant_bodyparts -= "waggingtail_human"
	H.update_body()

/obj/item/organ/tail/cat/oni_android
	name = "кибернетический хвост"
	desc = "Отрезанный кибернетический хвост. Кто сейчас кибер-виляет?"
	tail_type = "Oni"

/////////////////////////////////////////////////////////////////////////////////////////

/mob/living/carbon/human/species/android/synthman
	race = /datum/species/android/synthman

/datum/species/android/synthman
	name = "Синтетик"
	id = "synthman"
	limbs_id = null
	yogs_draw_robot_hair = TRUE

/datum/species/android/synthman/on_species_gain(mob/living/carbon/C)
	. = ..()
	C.draw_white_parts()
	C.update_body()

/////////////////////////////////////////////////////////////////////////////////////////

/datum/species/human/pigman
	name = "Свиноч"
	id = "pigman"
	say_mod = "хрюкает"
	species_language_holder = /datum/language_holder/xoxol
	brutemod = 0.5
	coldmod = 0.5
	burnmod = 2
	heatmod = 2
	payday_modifier = 1.5 // :^)
	mutant_bodyparts = list("tail_human" = "Pig", "ears" = "Pig")
	mutantears = /obj/item/organ/ears/pig
	mutant_organs = list(/obj/item/organ/tail/cat/pig)

/datum/species/human/pigman/on_species_gain(mob/living/carbon/human/C)
	C.draw_custom_races(TRUE)
	. = ..()

/datum/species/human/pigman/on_species_loss(mob/living/carbon/human/C)
	C.draw_custom_races(FALSE)
	. = ..()

/datum/species/human/pigman/spec_life(mob/living/carbon/human/H, delta_time, times_fired)
	if(H.stat && DT_PROB(1.5, delta_time))
		playsound(src, pick('white/valtos/sounds/pig/hru.ogg', 'white/valtos/sounds/pig/oink.ogg', 'white/valtos/sounds/pig/squeak.ogg'), 50, TRUE)
	..()

/datum/language_holder/xoxol
	understood_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
								/datum/language/xoxol = list(LANGUAGE_ATOM))
	spoken_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
							/datum/language/xoxol = list(LANGUAGE_ATOM))

/obj/item/organ/ears/pig
	name = "свиноушки"
	icon = 'white/valtos/icons/mutant_bodyparts.dmi'
	icon_state = "piggy"
	damage_multiplier = 1.5

/obj/item/organ/ears/pig/Insert(mob/living/carbon/human/H, special = 0, drop_if_replaced = TRUE)
	..()
	if(istype(H))
		color = H.hair_color
		H.dna.features["ears"] = H.dna.species.mutant_bodyparts["ears"] = "Pig"
		H.update_body()

/obj/item/organ/ears/pig/Remove(mob/living/carbon/human/H,  special = 0)
	..()
	if(istype(H))
		color = H.hair_color
		H.dna.features["ears"] = "None"
		H.dna.species.mutant_bodyparts -= "ears"
		H.update_body()

/obj/item/organ/tail/cat/pig
	name = "свинячий хвост"
	desc = "Отрезанный свинячий хвост. Хрю?"
	icon = 'white/valtos/icons/mutant_bodyparts.dmi'
	icon_state = "piggy"
	tail_type = "Pig"

/////////////////////////////////////////////////////////////////////////////////////////
