class Adddefaultusersettings < ActiveRecord::Migration
  def change
    add_column :users, :picture_url, :string, :default => "http://honeyengineeringworks.com/wp-content/uploads/2014/12/profile-default.png"
    add_column :users, :age, :integer, :default => ""
    add_column :users, :specialty, :string, :default => ""
    add_column :users, :sex, :string, :default => ""
  end
end
