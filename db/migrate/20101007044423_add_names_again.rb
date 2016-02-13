class AddNamesAgain < ActiveRecord::Migration
  def self.up
    add_column :standstickers, :name, :string
    add_column :standadditionals, :name, :string
  end

  def self.down
    remove_column :standstickers, :name
    remove_column :standadditionals, :name
  end
end
