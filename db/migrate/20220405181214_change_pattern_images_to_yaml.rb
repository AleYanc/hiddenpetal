class ChangePatternImagesToYaml < ActiveRecord::Migration[6.1]
  def up
    change_column :patterns, :images, :string, default: [].to_yaml
  end

  def down
    change_column :patterns, :images, :string, default: []
  end
end
