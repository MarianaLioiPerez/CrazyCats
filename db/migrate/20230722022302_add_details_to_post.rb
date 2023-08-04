class AddDetailsToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :cfcposts, :post_id, :integer
  end
end
