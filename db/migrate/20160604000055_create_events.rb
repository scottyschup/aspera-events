class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.timestamp :date, null: false
      t.integer :game_type_id, null: false
      t.integer :minimum_number, default: 1, null: false
      t.string :location, null: false

      t.timestamps null: false
    end
  end
end
