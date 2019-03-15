class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :productid
      t.string :productname
      t.integer :customerid
      t.integer :quantity
      t.decimal :subtotal
      t.decimal :taxrate
      t.decimal :total
      t.boolean :shipped

      t.timestamps
    end
  end
end
