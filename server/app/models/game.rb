class Game < ApplicationRecord
  has_many :players, dependent: :destroy

  def to_dto
    serializable_hash(
      include: {
        players: {
          only: [:name],
          include: { cards: { only: :name } }
        }
      },
      except: [:id, :created_at, :updated_at]
    )
  end
end
