class AddNames < ActiveRecord::Migration
  def self.up
    add_column :awards, :name, :string
    add_column :expos, :name, :string
    add_column :polygraphies, :name, :string
    add_column :printplacards, :name, :string
    add_column :printposters, :name, :string
    add_column :printwallpapers, :name, :string
    add_column :souvenirs, :name, :string
    add_column :standchildrens, :name, :string
    add_column :standdous, :name, :string
    add_column :standlagers, :name, :string
    add_column :standprofs, :name, :string
    add_column :standpreds, :name, :string
    add_column :standsafeties, :name, :string
    add_column :standschools, :name, :string
    add_column :standthematics, :name, :string    
  end

  def self.down
    remove_column :awards, :name
    remove_column :expos, :name        
    remove_column :polygraphies, :name
    remove_column :printplacards, :name
    remove_column :printposters, :name
    remove_column :printwallpapers, :name
    remove_column :souvenirs, :name
    remove_column :standchildrens, :name
    remove_column :standdous, :name
    remove_column :standlagers, :name
    remove_column :standprofs, :name
    remove_column :standpreds, :name
    remove_column :standsafeties, :name
    remove_column :standschools, :name
    remove_column :standthematics, :name
  end
end