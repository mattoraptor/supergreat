class Player < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end

  after_create do
    4.times do |num|
      cards.create(name: "#{name}card#{num}")
    end
  end

  has_many :cards, class_name: 'PlayableCard', dependent: :destroy
end
