class AddAttachmentsImageToExpo < ActiveRecord::Migration[4.2]
  def self.up
    add_column :expos, :image_file_name, :string
    add_column :expos, :image_content_type, :string
    add_column :expos, :image_file_size, :integer
    add_column :expos, :image_updated_at, :datetime
  end

  def self.down
    remove_column :expos, :image_file_name
    remove_column :expos, :image_content_type
    remove_column :expos, :image_file_size
    remove_column :expos, :image_updated_at
  end
end
