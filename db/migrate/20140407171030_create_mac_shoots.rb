class CreateMacShoots < ActiveRecord::Migration
  def change
    create_table :mac_shoots do |t|
      t.integer :user_id
      t.string :division
      t.integer :score_actual
      t.integer :location_id

      t.timestamps
    end
  end
end
