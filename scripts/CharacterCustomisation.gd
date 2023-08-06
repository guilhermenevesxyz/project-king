extends Control

@onready
var character = {
	body = self.get_node("MarginContainer/HBoxContainer/Character/Body"),
	hair = self.get_node("MarginContainer/HBoxContainer/Character/Hair"),
	moustache = self.get_node("MarginContainer/HBoxContainer/Character/Moustache"),
	chin = self.get_node("MarginContainer/HBoxContainer/Character/Chin"),
	sideburns = self.get_node("MarginContainer/HBoxContainer/Character/Sideburns"),
	shirt = self.get_node("MarginContainer/HBoxContainer/Character/Shirt"),
	trousers = self.get_node("MarginContainer/HBoxContainer/Character/Trousers"),
	shoes = self.get_node("MarginContainer/HBoxContainer/Character/Shoes"),
	outerwear = self.get_node("MarginContainer/HBoxContainer/Character/Outerwear"),
	hat = self.get_node("MarginContainer/HBoxContainer/Character/Hat")
}

@onready
var customisation_options = {
	skin = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Skin"),
	hair = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Hair"),
	moustache = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Moustache"),
	chin = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Chin"),
	sideburns = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Sideburns"),
	shirt = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Shirt"),
	trousers = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Trousers"),
	shoes = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Shoes"),
	outerwear = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Outerwear"),
	hat = self.get_node("MarginContainer/HBoxContainer/VBoxContainer/Hat"),
}

const customisation_items = {
	skin = {
		fair = preload("res://sprites/character/character_base_white.png"),
		dark = preload("res://sprites/character/character_base_black.png")
	},

	hair = {
		buzz_cut = preload("res://sprites/character/hair/hair_1.png"),
		crew_cut = preload("res://sprites/character/hair/hair_2.png"),
		medium_length = preload("res://sprites/character/hair/hair_3.png"),
		long = preload("res://sprites/character/hair/hair_4.png")
	},
	
	moustache = {
		pencil = preload("res://sprites/character/beard/moustache/moustache_1.png"),
		chevron = preload("res://sprites/character/beard/moustache/moustache_2.png")
	},
	
	chin = {
		soul_patch = preload("res://sprites/character/beard/chin/chin_1.png"),
		goatee = preload("res://sprites/character/beard/chin/chin_2.png"),
		puff = preload("res://sprites/character/beard/chin/chin_3.png")
	},
	
	sideburns = {
		cheek_stubble = preload("res://sprites/character/beard/sideburns/sideburns_1.png"),
		mutton_chops = preload("res://sprites/character/beard/sideburns/sideburns_2.png")
	},
	
	shirt = {
		t_shirt = preload("res://sprites/character/shirt/t_shirt.png"),
		collar_shirt = preload("res://sprites/character/shirt/collar_shirt.png"),
		crop_top = preload("res://sprites/character/shirt/crop_top.png")
	},
	
	trousers = {
		jeans = preload("res://sprites/character/trousers/jeans.png"),
		chinos = preload("res://sprites/character/trousers/chinos.png"),
		joggers = preload("res://sprites/character/trousers/joggers.png"),
		cargo_pants = preload("res://sprites/character/trousers/cargo_pants.png"),
		britches = preload("res://sprites/character/trousers/britches.png"),
		denim_shorts = preload("res://sprites/character/trousers/denim_shorts.png")
	},
	
	shoes = {
		trainers = preload("res://sprites/character/shoes/trainers.png"),
		oxford_shoes = preload("res://sprites/character/shoes/oxford_shoes.png")
	},
	
	outerwear = {
		jacket = preload("res://sprites/character/outerwear/jacket.png"),
		hoodie = preload("res://sprites/character/outerwear/hoodie.png"),
		coat = preload("res://sprites/character/outerwear/coat.png"),
		overshirt = preload("res://sprites/character/outerwear/overshirt.png"),
		oversized_shirt = preload("res://sprites/character/outerwear/oversized_shirt.png"),
		vest = preload("res://sprites/character/outerwear/vest.png")
	},
	
	hat = {
		baseball_cap = preload("res://sprites/character/hat/baseball_cap.png"),
		beanie = preload("res://sprites/character/hat/beanie.png"),
		flat_cap = preload("res://sprites/character/hat/flat_cap.png"),
		fedora = preload("res://sprites/character/hat/fedora.png"),
		bowler = preload("res://sprites/character/hat/bowler.png"),
		straw_hat = preload("res://sprites/character/hat/straw_hat.png")
	}
}

func _on_skin_item_selected(index):
	match customisation_options.skin.get_item_text(index):
		"Fair Skin": character.body.set_texture(customisation_items.skin.fair)
		"Dark Skin": character.body.set_texture(customisation_items.skin.dark)

func _on_hair_item_selected(index):
	match customisation_options.hair.get_item_text(index):
		"Bald": character.hair.set_texture(null)
		"Buzz Cut": character.hair.set_texture(customisation_items.hair.buzz_cut)
		"Crew Cut": character.hair.set_texture(customisation_items.hair.crew_cut)
		"Medium-Length Hair": character.hair.set_texture(customisation_items.hair.medium_length)
		"Long Hair": character.hair.set_texture(customisation_items.hair.long)

func _on_moustache_item_selected(index):
	match customisation_options.moustache.get_item_text(index):
		"Clean-Shaven Moustache": character.moustache.set_texture(null)
		"Pencil Moustache": character.moustache.set_texture(customisation_items.moustache.pencil)
		"Chevron Moustache": character.moustache.set_texture(customisation_items.moustache.chevron)

func _on_chin_item_selected(index):
	match customisation_options.chin.get_item_text(index):
		"Clean-Shaven Chin": character.chin.set_texture(null)
		"Soul Patch": character.chin.set_texture(customisation_items.chin.soul_patch)
		"Goatee": character.chin.set_texture(customisation_items.chin.goatee)
		"Chin Puff": character.chin.set_texture(customisation_items.chin.puff)

func _on_sideburns_item_selected(index):
	match customisation_options.sideburns.get_item_text(index):
		"Clean-Shaven Sideburns": character.sideburns.set_texture(null)
		"Cheek Stubble": character.sideburns.set_texture(customisation_items.sideburns.cheek_stubble)
		"Mutton Chops": character.sideburns.set_texture(customisation_items.sideburns.mutton_chops)

func _on_shirt_item_selected(index):
	match customisation_options.shirt.get_item_text(index):
		"Shirtless": character.shirt.set_texture(null)
		"T-Shirt": character.shirt.set_texture(customisation_items.shirt.t_shirt)
		"Collar Shirt": character.shirt.set_texture(customisation_items.shirt.collar_shirt)
		"Crop Top": character.shirt.set_texture(customisation_items.shirt.crop_top)

func _on_trousers_item_selected(index):
	match customisation_options.trousers.get_item_text(index):
		"Bottomless": character.trousers.set_texture(null)
		"Jeans": character.trousers.set_texture(customisation_items.trousers.jeans)
		"Chinos": character.trousers.set_texture(customisation_items.trousers.chinos)
		"Joggers": character.trousers.set_texture(customisation_items.trousers.joggers)
		"Cargo Pants": character.trousers.set_texture(customisation_items.trousers.cargo_pants)
		"Britches": character.trousers.set_texture(customisation_items.trousers.britches)
		"Denim Shorts": character.trousers.set_texture(customisation_items.trousers.denim_shorts)

func _on_shoes_item_selected(index):
	match customisation_options.shoes.get_item_text(index):
		"Barefoot": character.shoes.set_texture(null)
		"Trainers": character.shoes.set_texture(customisation_items.shoes.trainers)
		"Oxford Shoes": character.shoes.set_texture(customisation_items.shoes.oxford_shoes)

func _on_outerwear_item_selected(index):
	match customisation_options.outerwear.get_item_text(index):
		"Uncovered": character.outerwear.set_texture(null)
		"Jacket": character.outerwear.set_texture(customisation_items.outerwear.jacket)
		"Hoodie": character.outerwear.set_texture(customisation_items.outerwear.hoodie)
		"Coat": character.outerwear.set_texture(customisation_items.outerwear.coat)
		"Overshirt": character.outerwear.set_texture(customisation_items.outerwear.overshirt)
		"Oversized Shirt": character.outerwear.set_texture(customisation_items.outerwear.oversized_shirt)
		"Vest": character.outerwear.set_texture(customisation_items.outerwear.vest)

func _on_hat_item_selected(index):
	match customisation_options.hat.get_item_text(index):
		"Bareheaded": character.hat.set_texture(null)
		"Baseball Cap": character.hat.set_texture(customisation_items.hat.baseball_cap)
		"Beanie": character.hat.set_texture(customisation_items.hat.beanie)
		"Flat Cap": character.hat.set_texture(customisation_items.hat.flat_cap)
		"Fedora": character.hat.set_texture(customisation_items.hat.fedora)
		"Bowler": character.hat.set_texture(customisation_items.hat.bowler)
		"Straw Hat": character.hat.set_texture(customisation_items.hat.straw_hat)
