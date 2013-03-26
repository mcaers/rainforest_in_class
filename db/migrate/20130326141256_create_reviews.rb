class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user # -> user_id
      t.references :product # product_id
      t.text :comment

      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :product_id
  end
end
