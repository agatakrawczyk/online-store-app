class RemoveForeignKeyOfProductFromLineItems < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :line_items, column: :product_id
  end
end
