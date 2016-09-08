class AddPlaySlotsToPlayableCard < ActiveRecord::Migration[5.0]
  def change
    add_column :playable_cards, :played_in, :number
  end
end
