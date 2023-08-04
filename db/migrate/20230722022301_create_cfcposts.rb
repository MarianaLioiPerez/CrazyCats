class CreateCfcposts < ActiveRecord::Migration[7.0]
  def change
    create_table :cfcposts do |t|
      t.string :title
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
