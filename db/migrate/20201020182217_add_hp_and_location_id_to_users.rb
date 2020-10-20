class AddHpAndLocationIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hp, :integer
    add_column :users, :location_id, :integer
  end
end
