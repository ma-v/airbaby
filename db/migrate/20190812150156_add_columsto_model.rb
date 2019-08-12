class AddColumstoModel < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :address, :string
    add_column :users, :description, :string
    add_column :users, :pedophile, :boolean, default: false
  end
end
