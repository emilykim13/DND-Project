class Enemy < ApplicationRecord
    include Combatable

    belongs_to :user
    belongs_to :campaign
    # has_and_belongs_to_many :items
    has_many :encounters
    has_many :characters, through: :encounters

    validates :challenge_rating, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 30 }

    @@name = ["Akibrus", "Andre", "Angelo", "Angun", "Balrus", "Brian", "Bulruk", "Caldor", "Dagen", "Darvyn", "Darvyn", "Delvin", "Devonte", "Donovan", "Dracyian", "Dray", "Eldar", "Engar", "Fabien", "Farkas", "Galdor", "Hadi", "Ian", "Igor", "Jai-Blynn", "Jose", "Klayden", "Laimus", "Luis", "Malfas", "Nestor", "Norok", "Orion", "Pindious", "Quintus", "Rammir", "Raul", "Remus", "Robert", "Rorik", "Sabir", "Severin", "Serius", "Shane", "Soril", "Sulfu", "Syfas", "Triston", "Udenna", "Viktas", "Vyn", "Wilkass", "Yagul", "Zakkuz", "Zarek", "Zorion","Adri", "Aleera", "Alva", "Amara", "Anya", "Asralyn", "Azura", "Breya", "Brina", "Caelia", "Celeste", "Ciscra", "Cori", "Dezaral", "Dorath", "Drusila", "Elda", "Emily", "Esmeralla", "Freya", "Gelda", "Hadena", "Kyla", "Kyra", "Lavina", "Lunarex", "Lyra", "Mireille", "Nyssa", "Olwyn", "Ophelia", "Peregrine", "Reyda", "Sarielle", "Shikita", "Sybella", "Syfyn", "Thalia", "Turilla", "Vasha", "Vixen", "Yvanna", "Zaria]"]
    @@of = ["Of", "Of The", "Child Of", "the Last", "Bane Of", "Light Of"]
    @@title = ["Dawn Breaker", "The Dark Sun", "The Brash", "The Undying", "The Rookie Punisher", "The God Eater", "The Soul Splitter", "The Man Eater", "Nether Realms", "Outter Wolds", "The Conquere", "The Bloodletter", "The White Quil", "The Reaper", "One Winged Angel", "The World Ender"]

    def self.name_generator
        "#{@@name.sample} #{@@of.sample} #{@@name.sample} #{@@title.sample}"
    end

    def self.enemy_generator(challenge_rating, campaign, user) #can be used to generate enemies
        case challenge_rating
            when 0
                Enemy.create( name: "#{self.name_generator}" , damage: 4, strength: rand(1..15) , dexterity: rand(1..15) , constitution: rand(1..15) , intelligence: rand(1..15) , wisdom: rand(1..15) , charisma: rand(1..15) , armor_rating: rand(5..10), challenge_rating: 0, max_hp: rand(1..70) , current_hp: 70 , experience_value: 50,  campaign: campaign , user: user )
            when 1
                Enemy.create( name: "#{self.name_generator}" , damage: 6, strength: rand(10..20) , dexterity: rand(1..20) , constitution: rand(1..20) , intelligence: rand(1..20) , wisdom: rand(1..20) , charisma: rand(1..20) , armor_rating: rand(6..11), challenge_rating: 1, max_hp: rand(71..85) , current_hp: 85 , experience_value: 100,  campaign: campaign , user: user )
            when 2
                Enemy.create( name: "#{self.name_generator}" , damage: 8, strength: rand(10..20) , dexterity: rand(1..20) , constitution: rand(1..20) , intelligence: rand(1..20) , wisdom: rand(1..20) , charisma: rand(1..20) , armor_rating: rand(7..12), challenge_rating: 2, max_hp: rand(86..100) , current_hp: 100 , experience_value: 150,  campaign: campaign , user: user )
            when 3
                Enemy.create( name: "#{self.name_generator}" , damage: 10, strength: rand(10..20) , dexterity: rand(1..20) , constitution: rand(1..20) , intelligence: rand(1..20) , wisdom: rand(1..20) , charisma: rand(1..20) , armor_rating: rand(8..13), challenge_rating: 3, max_hp: rand(101..115) , current_hp: 115 , experience_value: 200,  campaign: campaign , user: user )
            when 4
                Enemy.create( name: "#{self.name_generator}" , damage: 12, strength: rand(10..20) , dexterity: rand(1..20) , constitution: rand(1..20) , intelligence: rand(1..20) , wisdom: rand(1..20) , charisma: rand(1..20) , armor_rating: rand(9..14), challenge_rating: 4, max_hp: rand(116..130) , current_hp: 130 , experience_value: 250,  campaign: campaign , user: user )
            when 5
                Enemy.create( name: "#{self.name_generator}" , damage: 14, strength: rand(10..20) , dexterity: rand(1..20) , constitution: rand(1..20) , intelligence: rand(1..20) , wisdom: rand(1..20) , charisma: rand(1..20) , armor_rating: rand(10..15), challenge_rating: 5, max_hp: rand(131..145) , current_hp: 145 , experience_value: 300,  campaign: campaign , user: user )
            when 6
                Enemy.create( name: "#{self.name_generator}" , damage: 16, strength: rand(10..20) , dexterity: rand(1..20) , constitution: rand(1..20) , intelligence: rand(1..20) , wisdom: rand(1..20) , charisma: rand(1..20) , armor_rating: rand(11..16), challenge_rating: 6, max_hp: rand(146..160) , current_hp: 160 , experience_value: 350,  campaign: campaign , user: user )
            when 7
                Enemy.create( name: "#{self.name_generator}" , damage: 18, strength: rand(5..25) , dexterity: rand(5..25) , constitution: rand(5..25) , intelligence: rand(5..25), wisdom: rand(5..25) , charisma: rand(5..25) , armor_rating: rand(12..17), challenge_rating: 7, max_hp: rand(161..175) , current_hp: 175 , experience_value: 400,  campaign: campaign , user: user )
            when 8
                Enemy.create( name: "#{self.name_generator}" , damage: 22, strength: rand(5..25) , dexterity: rand(5..25) , constitution: rand(5..25) , intelligence: rand(5..25) , wisdom: rand(5..25) , charisma: rand(5..25) , armor_rating: rand(13..18), challenge_rating: 8, max_hp: rand(176..190) , current_hp: 190 , experience_value: 450,  campaign: campaign , user: user )
            when 9
                Enemy.create( name: "#{self.name_generator}" , damage: 24, strength: rand(5..25) , dexterity: rand(5..25) , constitution: rand(5..25) , intelligence: rand(5..25) , wisdom: rand(5..25) , charisma: rand(5..25) , armor_rating: rand(14..19), challenge_rating: 9, max_hp: rand(191..205) , current_hp: 205 , experience_value: 500,  campaign: campaign , user: user )
            when 10
                Enemy.create( name: "#{self.name_generator}" , damage: 26, strength: rand(5..25) , dexterity: rand(5..25) , constitution: rand(5..25) , intelligence: rand(5..25) , wisdom: rand(5..25) , charisma: rand(5..25) , armor_rating: rand(15..20), challenge_rating: 10, max_hp: rand(206..220) , current_hp: 220 , experience_value: 550,  campaign: campaign , user: user )
            when 11
                Enemy.create( name: "#{self.name_generator}" , damage: 28, strength: rand(5..25) , dexterity: rand(5..25) , constitution: rand(5..25) , intelligence: rand(5..25) , wisdom: rand(5..25) , charisma: rand(5..25) , armor_rating: rand(16..21), challenge_rating: 11, max_hp: rand(221..235) , current_hp: 235 , experience_value: 600,  campaign: campaign , user: user )
            when 12
                Enemy.create( name: "#{self.name_generator}" , damage: 30, strength: rand(5..25) , dexterity: rand(5..25) , constitution: rand(5..25) , intelligence: rand(5..25) , wisdom: rand(5..25) , charisma: rand(5..25) , armor_rating: 17, challenge_rating: 12, max_hp: rand(236..250) , current_hp: 250 , experience_value: 650,  campaign: campaign , user: user )
            when 13
                Enemy.create( name: "#{self.name_generator}" , damage: 32, strength: rand(10..30) , dexterity: rand(10..30) , constitution: rand(10..30) , intelligence: rand(10..30) , wisdom: rand(10..30) , charisma: rand(10..30) , armor_rating: 18, challenge_rating: 13, max_hp: rand(251..265) , current_hp: 265 , experience_value: 700,  campaign: campaign , user: user )
            when 14
                Enemy.create( name: "#{self.name_generator}" , damage: 34, strength: rand(10..30) , dexterity: rand(10..30) , constitution: rand(10..30) , intelligence: rand(10..30) , wisdom: rand(10..30) , charisma: rand(10..30) , armor_rating: 18, challenge_rating: 14, max_hp: rand(266..280) , current_hp: 280 , experience_value: 750,  campaign: campaign , user: user )
            when 15
                Enemy.create( name: "#{self.name_generator}" , damage: 36, strength: rand(10..30) , dexterity: rand(10..30) , constitution: rand(10..30) , intelligence: rand(10..30) , wisdom: rand(10..30) , charisma: rand(10..30) , armor_rating: 18, challenge_rating: 15, max_hp: rand(281..295) , current_hp: 295 , experience_value: 800,  campaign: campaign , user: user )
            when 16
                Enemy.create( name: "#{self.name_generator}" , damage: 38, strength: rand(10..30) , dexterity: rand(10..30) , constitution: rand(10..30) , intelligence: rand(10..30) , wisdom: rand(10..30) , charisma: rand(10..30) , armor_rating: 18, challenge_rating: 16, max_hp: rand(296..310) , current_hp: 310 , experience_value: 850,  campaign: campaign , user: user )
            when 17
                Enemy.create( name: "#{self.name_generator}" , damage: 40, strength: rand(10..30) , dexterity: rand(10..30) , constitution: rand(10..30) , intelligence: rand(10..30) , wisdom: rand(10..30) , charisma: rand(10..30) , armor_rating: 19, challenge_rating: 17, max_hp: rand(311..325) , current_hp: 325 , experience_value: 900,  campaign: campaign , user: user )
            when 18
                Enemy.create( name: "#{self.name_generator}" , damage: 42, strength: rand(10..30) , dexterity: rand(10..30) , constitution: rand(10..30) , intelligence: rand(10..30) , wisdom: rand(10..30) , charisma: rand(10..30) , armor_rating: 19, challenge_rating: 18, max_hp: rand(326..340) , current_hp: 340 , experience_value: 950,  campaign: campaign , user: user )
            when 19
                Enemy.create( name: "#{self.name_generator}" , damage: 44, strength: rand(15..35) , dexterity: rand(15..35) , constitution: rand(15..35) , intelligence: rand(15..35) , wisdom: rand(15..35) , charisma: rand(15..35) , armor_rating: 19, challenge_rating: 19, max_hp: rand(341..355) , current_hp: 355 , experience_value: 1000,  campaign: campaign , user: user )
            when 20
                Enemy.create( name: "#{self.name_generator}" , damage: 46, strength: rand(15..35) , dexterity: rand(15..35) , constitution: rand(15..35) , intelligence: rand(15..35) , wisdom: rand(15..35) , charisma: rand(15..35) , armor_rating: 20, challenge_rating: 20, max_hp: rand(356..400) , current_hp: 400 , experience_value: 1050,  campaign: campaign , user: user )
            when 21
                Enemy.create( name: "#{self.name_generator}" , damage: 48, strength: rand(15..35) , dexterity: rand(15..35) , constitution: rand(15..35) , intelligence: rand(15..35) , wisdom: rand(15..35) , charisma: rand(15..35) , armor_rating: 20, challenge_rating: 21, max_hp: rand(401..445) , current_hp: 445 , experience_value: 1100,  campaign: campaign , user: user )
            when 22
                Enemy.create( name: "#{self.name_generator}" , damage: 50, strength: rand(15..35) , dexterity: rand(15..35) , constitution: rand(15..35) , intelligence: rand(15..35) , wisdom: rand(15..35) , charisma: rand(15..35) , armor_rating: 21, challenge_rating: 22, max_hp: rand(446..490) , current_hp: 490 , experience_value: 1150,  campaign: campaign , user: user )
            when 23
                Enemy.create( name: "#{self.name_generator}" , damage: 52, strength: rand(15..35) , dexterity: rand(15..35) , constitution: rand(15..35) , intelligence: rand(15..35) , wisdom: rand(15..35) , charisma: rand(15..35) , armor_rating: 21, challenge_rating: 23, max_hp: rand(491..535) , current_hp: 535 , experience_value: 1200,  campaign: campaign , user: user )
            when 24
                Enemy.create( name: "#{self.name_generator}" , damage: 54, strength: rand(15..35) , dexterity: rand(15..35) , constitution: rand(15..35) , intelligence: rand(15..35) , wisdom: rand(15..35) , charisma: rand(15..35) , armor_rating: 22, challenge_rating: 24, max_hp: rand(536..580) , current_hp: 580 , experience_value: 1250,  campaign: campaign , user: user )
            when 25
                Enemy.create( name: "#{self.name_generator}" , damage: 56, strength: rand(20..40) , dexterity: rand(20..40) , constitution: rand(20..40) , intelligence: rand(20..40) , wisdom: rand(20..40) , charisma: rand(20..40) , armor_rating: 22, challenge_rating: 25, max_hp: rand(581..625) , current_hp: 625 , experience_value: 1300,  campaign: campaign , user: user )
            when 26
                Enemy.create( name: "#{self.name_generator}" , damage: 58, strength: rand(20..40) , dexterity: rand(20..40) , constitution: rand(20..40) , intelligence: rand(20..40) , wisdom: rand(20..40) , charisma: rand(20..40) , armor_rating: 23, challenge_rating: 26, max_hp: rand(626..689) , current_hp: 689 , experience_value: 1350,  campaign: campaign , user: user )
            when 27
                Enemy.create( name: "#{self.name_generator}" , damage: 60, strength: rand(20..40) , dexterity: rand(20..40) , constitution: rand(20..40) , intelligence: rand(20..40) , wisdom: rand(20..40) , charisma: rand(20..40) , armor_rating: 23, challenge_rating: 27, max_hp: rand(690..759) , current_hp: 759 , experience_value: 1400,  campaign: campaign , user: user )
            when 28
                Enemy.create( name: "#{self.name_generator}" , damage: 62, strength: rand(20..40) , dexterity: rand(20..40) , constitution: rand(20..40) , intelligence: rand(20..40) , wisdom: rand(20..40) , charisma: rand(20..40) , armor_rating: 24, challenge_rating: 28, max_hp: rand(760..836) , current_hp: 836 , experience_value: 1450,  campaign: campaign , user: user )
            when 29
                Enemy.create( name: "#{self.name_generator}" , damage: 64, strength: rand(20..40) , dexterity: rand(20..40) , constitution: rand(20..40) , intelligence: rand(20..40) , wisdom: rand(20..40) , charisma: rand(20..40) , armor_rating: 24, challenge_rating: 29, max_hp: rand(837..921) , current_hp: 921 , experience_value: 1500,  campaign: campaign , user: user )
            when 30
                Enemy.create( name: "#{self.name_generator}" , damage: 66, strength: rand(20..40) , dexterity: rand(20..40) , constitution: rand(20..40) , intelligence: rand(20..40) , wisdom: rand(20..40) , charisma: rand(20..40) , armor_rating: 25, challenge_rating: 30, max_hp: rand(922..1015) , current_hp: 1015 , experience_value: 2000,  campaign: campaign , user: user )
            end
        end

    end