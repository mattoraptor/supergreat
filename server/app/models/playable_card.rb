class PlayableCard < ApplicationRecord
  def as_json(options = {})
    super(options.merge(only: :name))
  end
end
