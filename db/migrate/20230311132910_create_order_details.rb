class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      
      t.integer	:unit_price, :null => false
      t.integer	:amount, :null => false
      enum making_status: { '着手不可': 0, '製作待ち': 1, '製作中': 2, '製作完了': 3 }, :null => false, :default => 0
      
      t.timestamps
    end
  end
end
