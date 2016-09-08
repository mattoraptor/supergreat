class Game < ApplicationRecord
  has_many :players, dependent: :destroy

  def play_card(player_id, card_id, slot_id)
    players[player_id.to_i].cards[card_id.to_i].played_in = slot_id.to_i
  end

  def to_dto
    dto = {}
    dto['play_slots'] = [nil, nil, nil, nil]
    dto['players'] = []
    players.each do |player|
      dto['players'].push player.to_dto
    end
    dto
  end
end
