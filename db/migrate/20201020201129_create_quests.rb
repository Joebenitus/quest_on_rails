class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.column( :name,:string)
      t.column(:instructions,:string)
      t.column(:user_id,:integer)
    end
  end
end
