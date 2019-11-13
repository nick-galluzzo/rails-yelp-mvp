class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating, null: false
      t.references :restaurant, foreign_key: true, null: false

      t.timestamps
    end
  end
end
