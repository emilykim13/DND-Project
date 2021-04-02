CharacterItem.destroy_all
Encounter.destroy_all
Item.destroy_all
Enemy.destroy_all
Dialogue.destroy_all
Character.destroy_all
User.destroy_all
Campaign.destroy_all



cam1 = Campaign.create(title: "Get that BREAD", description: "The art of getting bread, loaf, and buns", dialogue: [], response: [])
# cam2 = Campaign.create(title: "Get that bruh", description: "The art of getting bruh, bursh, and burhs", dialogue: ["blur", "hur", "dude"], response: ["poop", "doop", "boop"])
# d1 = Dialogue.create(campaign_id: cam1.id, sentence: "Apple Sauce")

weapon1 = Item.create(name: "The Oof Sword", cost: "1", weight: 10, damage_dice: 6)
weapon2 = Item.create(name: "Flatiron Sword", cost: "15000", weight: 10, damage_dice: 18)
weapon3 = Item.create(name: "Dope Knife", cost: "100", weight: 5, damage_dice: 10)
weapon4 = Item.create(name: "A Random Spear", cost: "175", weight: 11, damage_dice: 20)
weapon5 = Item.create(name: "Toe Skinner", cost: "250", weight: 6, damage_dice: 12)
weapon6 = Item.create(name: "Angelo's Hands", cost: "300", weight: 0, damage_dice: 24)

shield1 = Item.create(name: "Buttwiper Helmet", cost: "150", weight: 7, armor: 10)
shield2 = Item.create(name: "Raul's Glasses", cost: "350", weight: 1, armor: 11)
shield3 = Item.create(name: "Blaze It Shield", cost: "420", weight: 20, armor: 11)
shield4 = Item.create(name: "Nike Toe Boots", cost: "450", weight: 10, armor: 12)
shield5 = Item.create(name: "Dino Suit", cost: "500", weight: 9, armor: 12)
shield6 = Item.create(name: "N95 Masks", cost: "800", weight: 1, armor: 14)

# Event.create( title: , chapter?, dialogue )

# what if we created a model that shovels the user's responses into an array and comsumes it in order



# usr1 = User.create(username: "emily13", password: "milk")

# cam1 = Campaign.create(title: "land of the oof")
# cam2 = Campaign.create(title: "oof em port")

# usr2 = User.create(username:"my oofs tho", password_digest: "oof")

# e1 = Enemy.create( name: "Angelo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20),  campaign: cam1 , user: usr1 )
# e2 = Enemy.create( name: "Emily" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20), campaign: cam1 , user: usr1)
# e3 = Enemy.create( name: "Cori" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20),  campaign: cam1 , user: usr1)
# e4 = Enemy.create( name: "Donovan" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20),  campaign: cam2 , user: usr1)
# e5 = Enemy.create( name: "Shane" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20),  campaign: cam2 , user: usr1)

# c1 = Character.create( name: "Raul" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20),  campaign: cam1 , user: usr1 )
# c2 = Character.create( name: "Nestor" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20),  campaign: cam1 , user: usr1)
# c3 = Character.create( name: "Cori" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20),  campaign: cam1 , user: usr1)
# c4 = Character.create( name: "Jose" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20), campaign: cam2 , user: usr1)
# c5 = Character.create( name: "Adri" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20),  campaign: cam2 , user: usr1)

# encounter_1 = Encounter.create(character: c1, enemy: e1)
