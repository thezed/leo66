class AddAttachmentsImageToStandlager < ActiveRecord::Migration
  def self.up
    add_column :standlagers, :image_file_name, :string
    add_column :standlagers, :image_content_type, :string
    add_column :standlagers, :image_file_size, :integer
    add_column :standlagers, :image_updated_at, :datetime
  end

  def self.down
    remove_column :standlagers, :image_file_name
    remove_column :standlagers, :image_content_type
    remove_column :standlagers, :image_file_size
    remove_column :standlagers, :image_updated_at
  end
end
