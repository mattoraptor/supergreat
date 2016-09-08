class Game < ApplicationRecord
  has_many :players, dependent: :destroy

  def play_card(player_id, card_id, slot_id)
    players[player_id.to_i].cards[card_id.to_i].played_in = slot_id.to_i
  end

  def to_dto
    serializable_hash(
      include: {
        players: {
          only: [:name],
          include: { cards: { only: [:name, :played_in] } }
        }
      },
      except: [:id, :created_at, :updated_at]
    )
  end
end
