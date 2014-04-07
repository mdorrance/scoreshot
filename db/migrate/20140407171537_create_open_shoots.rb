class CreateOpenShoots < ActiveRecord::Migration
  def change
    create_table :open_shoots do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :division
      t.integer :score_actual

      t.timestamps
    end
  end
end
