class Game < ApplicationRecord
  has_many :players, dependent: :destroy

  def play_card(player_id, card_id, slot_id)
    players[player_id.to_i].cards[card_id.to_i].played_in = slot_id.to_i
  end

  def to_dto
    dto = {}
    dto['play_slots'] = build_play_slots
    dto['players'] = []
    players.each do |player|
      dto['players'].push player.to_dto
    end
    dto
  end

  def build_play_slots
    [
      card_in_slot(0),
      card_in_slot(1),
      card_in_slot(2),
      card_in_slot(3)
    ]
  end

  def card_in_slot(slot)
    players.each do |player|
      player.cards.each do |card|
        return card.to_dto if card.played_in == slot
      end
    end
    nil
  end
end
