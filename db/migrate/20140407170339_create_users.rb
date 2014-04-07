class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :email
      t.string :username

      t.timestamps
    end
    add_index :users, :username
  end
end
