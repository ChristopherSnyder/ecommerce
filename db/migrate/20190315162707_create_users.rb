class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :accesslevel
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
