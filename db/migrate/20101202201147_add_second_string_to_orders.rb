class AddSecondStringToOrders < ActiveRecord::Migration[4.2]
  def self.up
    add_column :orders, :name_com, :string 
  end

  def self.down
    remove_column :orders, :name_com
  end
end
