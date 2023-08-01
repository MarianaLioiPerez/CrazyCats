class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :cfcusers, :name, :string
    add_column :cfcusers, :image, :string
  end
end
