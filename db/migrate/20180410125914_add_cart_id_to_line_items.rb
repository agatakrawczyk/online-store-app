class AddCartIdToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :cart_id, :bigint
  end
end
