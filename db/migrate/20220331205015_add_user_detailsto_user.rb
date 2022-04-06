class AddUserDetailstoUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :short_desc, :string
    add_column :users, :presentation, :string
    add_column :users, :alias, :string
  end
end
