class CreateEnemies < ActiveRecord::Migration[5.2]
  def change
    create_table :enemies do |t|
      t.column :name, :string
      t.column :location_id, :integer
      t.column :defeated?, :boolean
    end
  end
end
