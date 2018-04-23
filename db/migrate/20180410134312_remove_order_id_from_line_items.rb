class RemoveOrderIdFromLineItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :line_items, :order_id, :bigint
  end
end
