class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.belongs_to :user, index: true
      t.string :name, null: false
      t.string :location, null: false

      t.timestamps null: false
    end
  end
end
