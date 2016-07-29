class Player < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end

  has_many :playable_cards, dependent: :destroy
end
