class RemoveTypeFromHomeBanners < ActiveRecord::Migration[6.1]
  def change
    remove_column :home_banners, :type
  end
end
