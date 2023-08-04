class CreateCfcreactions < ActiveRecord::Migration[7.0]
  def change
    create_table :cfcreactions do |t|
      t.string :reaction_type
      t.string :kind
      t.references :cfccomments, null: false, foreign_key: true
      t.references :cfcuser, null: false, foreign_key: true
      t.references :cfcpost, null: false, foreign_key: true

      t.timestamps
    end
  end
end
