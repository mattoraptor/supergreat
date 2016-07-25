class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :character
      t.integer :card_type
      t.string :effect

      t.timestamps
    end
  end
end
