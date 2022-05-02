class AddTypeToHomeBanners < ActiveRecord::Migration[6.1]
  def change
    add_column :home_banners, :type, :string
  end
end
