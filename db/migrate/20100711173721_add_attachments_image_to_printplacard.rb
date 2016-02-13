class AddAttachmentsImageToPrintplacard < ActiveRecord::Migration
  def self.up
    add_column :printplacards, :image_file_name, :string
    add_column :printplacards, :image_content_type, :string
    add_column :printplacards, :image_file_size, :integer
    add_column :printplacards, :image_updated_at, :datetime
  end

  def self.down
    remove_column :printplacards, :image_file_name
    remove_column :printplacards, :image_content_type
    remove_column :printplacards, :image_file_size
    remove_column :printplacards, :image_updated_at
  end
end
