class Card < ApplicationRecord  
	def self.cardTypes
    [['Attack', 1], ['Defense', 2]]
  end

  def self.cardImages
  	{ 1=> "Sword.png", 2 => "Defense.png"}
  end
end
