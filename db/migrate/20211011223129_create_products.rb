class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :img
      t.float :price
      t.string :link

      t.timestamps
    end
  end
end
