class CreateCreatures < ActiveRecord::Migration[6.1]
  def change
    create_table :creatures do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
