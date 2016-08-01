class Player < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end

  after_create :create_cards

  private

  def create_cards
    4.times do |num|
      cards.create(name: "#{name}card#{num}")
    end
    true
  end

  # belongs_to :game
  has_many :cards, class_name: 'PlayableCard', dependent: :destroy
end
