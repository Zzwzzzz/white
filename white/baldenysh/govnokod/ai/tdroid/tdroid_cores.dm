/datum/ai_controller/tdroid/core
	continue_processing_when_client = TRUE
	talkative = TRUE

/obj/item/organ/tactical_core
	name = "тактическое ядро"
	desc = "Тактическое ядро андроида неизвестной марки. Используйте встроенный ДНК-сканнер для установки коммандира."
	icon = 'white/baldenysh/icons/obj/organs.dmi'
	icon_state = "snus_mycosis"
	zone = BODY_ZONE_HEAD
	slot = "tactical_core"
	organ_flags = ORGAN_SYNTHETIC
	var/emp_vulnerability = 20

	var/datum/ai_controller/tdroid/core/AI = new
	var/mob/living/commander_mob

/obj/item/organ/tactical_core/Insert(mob/living/carbon/M, special, drop_if_replaced)
	. = ..()
	AI.PossessPawn(M)
	AI.RegisterCommander(commander_mob)

/obj/item/organ/tactical_core/Remove(mob/living/carbon/M, special, drop_if_replaced)
	. = ..()
	AI.UnpossessPawn(M)

/obj/item/organ/tactical_core/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	if(prob(emp_vulnerability/severity))
		organ_flags |= ORGAN_SYNTHETIC_EMP
		if(AI && AI.blackboard[BB_TDROID_COMMANDER])
			AI.UnregisterCommander()

/obj/item/organ/tactical_core/examine(mob/user)
	. = ..()
	. += "<span class='notice'>Коммандир: [commander_mob.name]</span>" //ваще надо на строчку днк заменить но пока похуй

/obj/item/organ/tactical_core/attack_self(mob/user)
	. = ..()
	if(isliving(user))
		commander_mob = user
