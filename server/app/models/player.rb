class Player < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end

  def to_dto
    pdto = {}
    pdto['name'] = name
    pdto['cards'] = []
    cards.each do |card|
      pdto['cards'].push card.played_in ? nil : card.to_dto
    end
    pdto
  end

  belongs_to :game, inverse_of: :players
  has_many :cards, class_name: 'PlayableCard', dependent: :destroy
end
