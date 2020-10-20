class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.column :name, :string
      t.column :user_id, :integer
    end
  end
end
