class CreatePlayableCards < ActiveRecord::Migration[5.0]
  def change
    create_table :playable_cards do |t|
      t.string :name

      t.timestamps
    end
  end
end
