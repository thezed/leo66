class AddAttachmentsImageToStandsafety < ActiveRecord::Migration[4.2]
  def self.up
    add_column :standsafeties, :image_file_name, :string
    add_column :standsafeties, :image_content_type, :string
    add_column :standsafeties, :image_file_size, :integer
    add_column :standsafeties, :image_updated_at, :datetime
  end

  def self.down
    remove_column :standsafeties, :image_file_name
    remove_column :standsafeties, :image_content_type
    remove_column :standsafeties, :image_file_size
    remove_column :standsafeties, :image_updated_at
  end
end
