class ChangeBannerImagesToYaml < ActiveRecord::Migration[6.1]
  def up
    change_column :home_banners, :images, :string, default: [].to_yaml
  end

  def down
    change_column :home_banners, :images, :string, default: []
  end
end
