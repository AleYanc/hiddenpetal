class ChangeReviewImagesToYaml < ActiveRecord::Migration[6.1]
  def up
    change_column :reviews, :images, :string, default: [].to_yaml
  end

  def down
    change_column :reviews, :images, :string, default: []
  end
end
