class AddColumnUsernameAndAdmin < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :admin, :boolean, default: false
  end
end
