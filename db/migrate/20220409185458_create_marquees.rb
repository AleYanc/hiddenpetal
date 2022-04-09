class CreateMarquees < ActiveRecord::Migration[6.1]
  def change
    create_table :marquees do |t|
      t.string :title

      t.timestamps
    end
  end
end
