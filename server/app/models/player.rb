class Player < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end

  belongs_to :game, inverse_of: :players
  has_many :cards, class_name: 'PlayableCard', dependent: :destroy
end
