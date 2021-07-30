/datum/crafting_recipe/wrappedboots
	name = "����� � ���������"
	result = /obj/item/clothing/shoes/jackboots/wrapped
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet = 1)
	time = 150
	category = CAT_CLOTHING
/*
/datum/crafting_recipe
	var/name = "" //in-game display name
	var/list/reqs = list() //type paths of items consumed associated with how many are needed
	var/list/blacklist = list() //type paths of items explicitly not allowed as an ingredient
	var/result //type path of item resulting from this craft
	/// String defines of items needed but not consumed. Lazy list.
	var/list/tool_behaviors
	/// Type paths of items needed but not consumed. Lazy list.
	var/list/tool_paths
	var/time = 30 //time in deciseconds
	var/list/parts = list() //type paths of items that will be placed in the result
	var/list/chem_catalysts = list() //like tool_behaviors but for reagents
	var/category = CAT_NONE //where it shows up in the crafting UI
	var/subcategory = CAT_NONE
	var/always_available = TRUE //Set to FALSE if it needs to be learned first.
	/// Additonal requirements text shown in UI
	var/additional_req_text
	///Required machines for the craft, set the assigned value of the typepath to CRAFTING_MACHINERY_CONSUME or CRAFTING_MACHINERY_USE. Lazy associative list: type_path key -> flag value.
	var/list/machinery

/obj/item/shield/riot/buckler/med

/obj/item/stack/sheet/leather
GLOBAL_LIST_INIT(leather_recipes, list ( \
	new/datum/stack_recipe("��������", /obj/item/storage/wallet, 1), \
	new/datum/stack_recipe("���������", /obj/item/clothing/mask/muzzle, 2), \
	new/datum/stack_recipe("������������ ��������", /obj/item/clothing/gloves/botanic_leather, 3), \
	new/datum/stack_recipe("���� � �������������", /obj/item/storage/belt/utility, 4), \
	new/datum/stack_recipe("������� �����", /obj/item/storage/backpack/satchel/leather, 5), \
	new/datum/stack_recipe("���������", /obj/item/storage/belt/bandolier, 5), \
	new/datum/stack_recipe("������� ������", /obj/item/clothing/suit/jacket/leather, 7), \
	new/datum/stack_recipe("������� �������", /obj/item/clothing/shoes/laceup, 2), \
	new/datum/stack_recipe("������� ������", /obj/item/clothing/suit/jacket/leather/overcoat, 10), \
	new/datum/stack_recipe("�����", /obj/item/saddle, 5), \
))

/obj/item/stack/sheet

GLOBAL_LIST_INIT(cloth_recipes, list ( \
	new/datum/stack_recipe("����� �������", /obj/item/clothing/under/color/jumpskirt/white, 3), /*Ladies first*/ \
	new/datum/stack_recipe("����� ����������", /obj/item/clothing/under/color/white, 3), \
	new/datum/stack_recipe("����� �������", /obj/item/clothing/shoes/sneakers/white, 2), \
	new/datum/stack_recipe("����� ����", /obj/item/clothing/neck/scarf, 1), \
	null, \
	new/datum/stack_recipe("������", /obj/item/storage/backpack, 4), \
	new/datum/stack_recipe("��������", /obj/item/storage/backpack/duffelbag, 6), \
	null, \
	new/datum/stack_recipe("����� ��� ��������", /obj/item/storage/bag/plants, 4), \
	new/datum/stack_recipe("����� ��� ����", /obj/item/storage/bag/books, 4), \
	new/datum/stack_recipe("����� �������", /obj/item/storage/bag/ore, 4), \
	new/datum/stack_recipe("����� ��� ���������", /obj/item/storage/bag/chemistry, 4), \
	new/datum/stack_recipe("����� ��� ������������� ��������", /obj/item/storage/bag/bio, 4), \
	new/datum/stack_recipe("������������ �����", /obj/item/storage/bag/construction, 4), \
	null, \
	new/datum/stack_recipe("����������������� �����", /obj/item/stack/medical/gauze/improvised, 1, 2, 6), \
	new/datum/stack_recipe("������", /obj/item/reagent_containers/glass/rag, 1), \
	new/datum/stack_recipe("��������", /obj/item/bedsheet, 3), \
	new/datum/stack_recipe("������ ����� ��� �����", /obj/item/emptysandbag, 4), \
	null, \
	new/datum/stack_recipe("�������� ��� �������", /obj/item/clothing/gloves/fingerless, 1), \
	new/datum/stack_recipe("����� ��������", /obj/item/clothing/gloves/color/white, 3), \
	new/datum/stack_recipe("����� ������ �����", /obj/item/clothing/head/soft/mime, 2), \
	new/datum/stack_recipe("����� �������", /obj/item/clothing/head/beanie, 2), \
	null, \
	new/datum/stack_recipe("������� �� �����", /obj/item/clothing/glasses/blindfold, 2), \
	null, \
	new/datum/stack_recipe("����� 19x19", /obj/item/canvas/nineteen_nineteen, 3), \
	new/datum/stack_recipe("����� 23x19", /obj/item/canvas/twentythree_nineteen, 4), \
	new/datum/stack_recipe("����� 23x23", /obj/item/canvas/twentythree_twentythree, 5), \
	))

GLOBAL_LIST_INIT(cardboard_recipes, list (																				 \
	new/datum/stack_recipe("�������", /obj/item/storage/box),															 \
	new/datum/stack_recipe("������ ���������� �������", /obj/item/clothing/suit/cardborg, 3),					  		 \
	new/datum/stack_recipe("���� ���������� �������", /obj/item/clothing/head/cardborg),								 \
	new/datum/stack_recipe("������� �������", /obj/structure/closet/cardboard, 4, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("��������� �������", /obj/item/cardboard_cutout, 5),											 \
	null,																												 \

	new/datum/stack_recipe("������� �� ��� �����", /obj/item/pizzabox),							\
	new/datum/stack_recipe("�����", /obj/item/folder),											\
	null,																						\
	//TO-DO: Find a proper way to just change the illustration on the box. Code isn't the issue, input is.
	new/datum/stack_recipe_list("��������� �������", list(
		new /datum/stack_recipe("������� ��� ��������", /obj/item/storage/fancy/donut_box),								\
		new /datum/stack_recipe("������� ��� ���", /obj/item/storage/fancy/egg_box),									\
		new /datum/stack_recipe("donk-pockets box", /obj/item/storage/box/donkpockets),									\
		new /datum/stack_recipe("donk-pockets spicy box", /obj/item/storage/box/donkpockets/donkpocketspicy),			\
		new /datum/stack_recipe("donk-pockets teriyaki box", /obj/item/storage/box/donkpockets/donkpocketteriyaki),		\
		new /datum/stack_recipe("donk-pockets pizza box", /obj/item/storage/box/donkpockets/donkpocketpizza),			\
		new /datum/stack_recipe("donk-pockets berry box", /obj/item/storage/box/donkpockets/donkpocketberry),			\
		new /datum/stack_recipe("donk-pockets honk box", /obj/item/storage/box/donkpockets/donkpockethonk),				\
		new /datum/stack_recipe("monkey cube box", /obj/item/storage/box/monkeycubes),
		new /datum/stack_recipe("������� ��� ���������", /obj/item/storage/fancy/nugget_box),							\
		null,																											\

		new /datum/stack_recipe("������� ��� ��������� ������", /obj/item/storage/box/lethalshot),\
		new /datum/stack_recipe("������� ��� ��������� ������", /obj/item/storage/box/rubbershot),\
		new /datum/stack_recipe("������� ��� ��������� ������", /obj/item/storage/box/beanbag),		\
		new /datum/stack_recipe("������� ��� ������������ ������", /obj/item/storage/box/flashbangs),\
		new /datum/stack_recipe("flashes box", /obj/item/storage/box/flashes),						\
		new /datum/stack_recipe("������� ��� ����������", /obj/item/storage/box/handcuffs),			\
		new /datum/stack_recipe("������� ��� ID ����", /obj/item/storage/box/ids),					\
		new /datum/stack_recipe("������� ��� PDA", /obj/item/storage/box/pdas),						\
		null,																						\

		new /datum/stack_recipe("������� ��� ��������", /obj/item/storage/box/pillbottles),			\
		new /datum/stack_recipe("������� ��� ��������", /obj/item/storage/box/beakers),				\
		new /datum/stack_recipe("������� ��� �������", /obj/item/storage/box/syringes),				\
		new /datum/stack_recipe("������� ��� ��������� ��������", /obj/item/storage/box/gloves),	\
		new /datum/stack_recipe("������� ��� ���������� �����", /obj/item/storage/box/masks),		\
		new /datum/stack_recipe("������� ��� ������ ��� ���", /obj/item/storage/box/bodybags),		\
		new /datum/stack_recipe("������� ��� ����������� �����", /obj/item/storage/box/rxglasses),	\
		new /datum/stack_recipe("������� ��� ����������", /obj/item/storage/box/medipens),			\
		null,																						\

		new /datum/stack_recipe("������� ��� ������", /obj/item/storage/box/disks),						\
		new /datum/stack_recipe("������� �������� ������", /obj/item/storage/box/lights/tubes),			\
		new /datum/stack_recipe("������� ��� ��������", /obj/item/storage/box/lights/bulbs),			\
		new /datum/stack_recipe("������� ��� ������ ��������", /obj/item/storage/box/lights/mixed),		\
		new /datum/stack_recipe("������� ��� ���������", /obj/item/storage/box/mousetraps),				\
		new /datum/stack_recipe("������� ��� ������", /obj/item/storage/fancy/candle_box)
		)),

	null,																								\
))


GLOBAL_LIST_INIT(wood_recipes, list ( \
	new/datum/stack_recipe("���������� ��������", /obj/item/clothing/shoes/sandal, 1), \
	new/datum/stack_recipe("���������� ���", /obj/item/stack/tile/wood, 1, 4, 20), \
	new/datum/stack_recipe("���������� ������ �����", /obj/structure/table_frame/wood, 2, time = 10), \
	new/datum/stack_recipe("������� ��������", /obj/item/weaponcrafting/stock, 10, time = 40), \
	new/datum/stack_recipe("������", /obj/item/kitchen/rollingpin, 2, time = 30), \
	new/datum/stack_recipe("���������� ����", /obj/structure/chair/wood/, 3, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("winged wooden chair", /obj/structure/chair/wood/wings, 3, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden barricade", /obj/structure/barricade/wooden, 5, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("����������� ������", /obj/item/blacksmith/srub, 10, time = 10), \
	new/datum/stack_recipe("��������", /obj/structure/barricade/wooden/stockade, 2, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("���������� �����", /obj/structure/mineral_door/wood, 10, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("����", /obj/structure/closet/crate/coffin, 5, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("������� ����", /obj/structure/bookcase, 4, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("�������", /obj/machinery/smartfridge/drying_rack, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("���������� �����", /obj/structure/fermenting_barrel, 8, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("������� �������", /obj/structure/bed/dogbed, 10, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("�����", /obj/structure/dresser, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("����� ��� ����������", /obj/item/wallframe/picture, 1, time = 10),\
	new/datum/stack_recipe("����� ��� �������", /obj/item/wallframe/painting, 1, time = 10),\
	new/datum/stack_recipe("����� �����", /obj/structure/displaycase_chassis, 5, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("���������� ���", /obj/item/shield/riot/buckler, 20, time = 40), \
	new/datum/stack_recipe("��������", /obj/structure/beebox, 40, time = 50),\
	new/datum/stack_recipe("����� ����", /obj/item/clothing/mask/gas/tiki_mask, 2), \
	new/datum/stack_recipe("����� ��� ����", /obj/item/honey_frame, 5, time = 10),\
	new/datum/stack_recipe("���������� �����", /obj/item/reagent_containers/glass/bucket/wooden, 3, time = 10),\
	new/datum/stack_recipe("������", /obj/item/cultivator/rake, 5, time = 10),\
	new/datum/stack_recipe("���� ��� ����", /obj/structure/ore_box, 4, time = 50, one_per_turf = TRUE, on_floor = TRUE),\
	new/datum/stack_recipe("���������� ����", /obj/structure/closet/crate/wooden, 6, time = 50, one_per_turf = TRUE, on_floor = TRUE),\
	new/datum/stack_recipe("����������� ����", /obj/item/melee/baseball_bat, 5, time = 15),\
	new/datum/stack_recipe("������� ������", /obj/structure/loom, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("mortar", /obj/item/reagent_containers/glass/mortar, 3), \
	new/datum/stack_recipe("���������", /obj/item/match/firebrand, 2, time = 100), \
	new/datum/stack_recipe("�����", /obj/item/stack/teeth/human/wood, 1, time = 5),\
	new/datum/stack_recipe("������� ��������", /obj/item/scepter_shaft, 3, time=5),\
	null, \
	new/datum/stack_recipe_list("��������� ������", list(
		new /datum/stack_recipe("������ (�����������)", /obj/structure/chair/pew, 3, one_per_turf = TRUE, on_floor = TRUE),
		new /datum/stack_recipe("������ (�����)", /obj/structure/chair/pew/left, 3, one_per_turf = TRUE, on_floor = TRUE),
		new /datum/stack_recipe("������ (������)", /obj/structure/chair/pew/right, 3, one_per_turf = TRUE, on_floor = TRUE)
		)),
	null, \
	))
*/