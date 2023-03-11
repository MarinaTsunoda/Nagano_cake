class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      
      enum paymant_method: { 'クレジットカード': 0, '銀行振込': 1 }, :null => false
      t.string	:shipping_postal_code, :null => false
      t.string	:shipping_address, :null => false
      t.string	:shipping_name, :null => false
      t.integer	:postage, :null => false
      t.integer	:total_amount, :null => false
      enum order_status: { '入金待ち': 0, '入金確認': 1, '製作中': 2, '発送準備中': 3, '発送済み': 4 }, :null => false, :default => 0
      
      t.timestamps
    end
  end
end
