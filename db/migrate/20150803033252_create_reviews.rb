class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true
      t.belongs_to :restaurant, index: true

      t.string :comment, presence: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
