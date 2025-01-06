class CreateTrees < ActiveRecord::Migration[8.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.string :facebook
      t.string :x
      t.string :instagram
      t.string :website
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
