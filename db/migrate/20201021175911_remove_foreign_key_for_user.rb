class RemoveForeignKeyForUser < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :users, :locations
  end
end
