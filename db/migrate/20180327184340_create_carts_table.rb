class CreateCartsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_column :users, :cart_id, :integer, null: true, foreign_key: true
  end
end
