class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.timestamp :date_time, null: false
      t.integer :minimum_number, default: 1, null: false
      t.integer :location_id, default: 1, null: false
      t.integer :game_type_id, null: false

      t.timestamps null: false
    end
  end
end
