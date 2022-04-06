class CreatePatterns < ActiveRecord::Migration[6.1]
  def change
    create_table :patterns do |t|
      t.string :name
      t.string :description
      t.string :images, default: [], array: true
      t.integer :price

      t.timestamps
    end
  end
end
