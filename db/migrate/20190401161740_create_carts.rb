class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :user
      t.integer :product
      t.integer :quantity

      t.timestamps
    end
  end
end
