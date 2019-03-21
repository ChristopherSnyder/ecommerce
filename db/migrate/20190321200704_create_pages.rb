class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :pagename
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
