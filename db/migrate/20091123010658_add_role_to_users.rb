class AddRoleToUsers < ActiveRecord::Migration[4.2]
  def self.up
    add_column :users, :role, :string
  end

  def self.down
    remove_column :users, :role
  end
end
