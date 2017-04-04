class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :date
      t.integer :calories
      t.string :description
      t.integer :creator_id

      t.timestamps
    end
  end
end
