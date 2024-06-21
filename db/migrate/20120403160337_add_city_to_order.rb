class AddCityToOrder < ActiveRecord::Migration[4.2]
  def self.up
    add_column :orders, :city, :string
  end

  def self.down
    remove_column :orders, :city
  end
end
