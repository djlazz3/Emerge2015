class Username < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, :default => ""
    add_column :users, :phone, :string, :default => ""
  end
end
