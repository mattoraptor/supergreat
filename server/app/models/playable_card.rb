class PlayableCard < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end

  def to_dto
    cdto = {}
    cdto['name'] = name
    cdto
  end

  belongs_to :player, inverse_of: :cards
end
