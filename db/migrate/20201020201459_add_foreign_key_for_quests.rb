class AddForeignKeyForQuests < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :quests,:users
  end
end
