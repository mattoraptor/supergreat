class Game < ApplicationRecord
  after_create do
    4.times do |num|
      players.create(name: "player#{num}")
    end
  end

  has_many :players, dependent: :destroy
end
