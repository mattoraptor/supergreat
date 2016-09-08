class PlayableCard < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end

  belongs_to :player, inverse_of: :cards
end
