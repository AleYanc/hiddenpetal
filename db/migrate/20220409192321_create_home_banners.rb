class CreateHomeBanners < ActiveRecord::Migration[6.1]
  def change
    create_table :home_banners do |t|
      t.string :images, default: [], array: true

      t.timestamps
    end
  end
end
