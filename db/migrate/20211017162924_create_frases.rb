class CreateFrases < ActiveRecord::Migration[6.1]
  def change
    create_table :frases do |t|
      t.string :frase

      t.timestamps
    end
  end
end
