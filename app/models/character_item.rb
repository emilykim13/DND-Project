class CharacterItem < ApplicationRecord
    belongs_to :item
    belongs_to :character
end
