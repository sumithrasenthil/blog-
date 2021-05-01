class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :creatures, :password,:password_digest
  end
end
