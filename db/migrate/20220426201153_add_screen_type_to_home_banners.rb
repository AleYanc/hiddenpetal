class AddScreenTypeToHomeBanners < ActiveRecord::Migration[6.1]
  def change
    add_column :home_banners, :screen_type, :string
  end
end
