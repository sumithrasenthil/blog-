class AddUsernameToCreature < ActiveRecord::Migration[6.1]
  def change
    add_column :creatures, :username, :string
  end
end
