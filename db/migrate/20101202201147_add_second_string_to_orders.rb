class AddSecondStringToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :name_com, :string 
  end

  def self.down
    remove_column :orders, :name_com
  end
end
