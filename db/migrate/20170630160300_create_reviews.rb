class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :rating
      t.text :content_body

      t.timestamps
    end
  end
end
