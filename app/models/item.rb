class Item < ApplicationRecord
  belongs_to :user
  def get_rarity
    rarity_hash = { 1..50 => 'Common', 51..75 => 'Uncommon', 76..88 => 'Rare', 89..95 => 'Epic', 96..99 => 'Legendary' }
    rarity_hash.select {|rarity| rarity === self.rarity}.values.first 
  end
end