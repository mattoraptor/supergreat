class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :health
      t.integer :attack
      t.integer :defense
      t.string :effect

      t.timestamps
    end
  end
end
