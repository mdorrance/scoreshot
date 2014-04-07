class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
