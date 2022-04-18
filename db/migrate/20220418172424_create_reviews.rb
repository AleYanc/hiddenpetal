class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.string :content
      t.string :images, default: [], array: true

      t.timestamps
    end
  end
end
