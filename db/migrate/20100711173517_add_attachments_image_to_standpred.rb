class AddAttachmentsImageToStandpred < ActiveRecord::Migration
  def self.up
    add_column :standpreds, :image_file_name, :string
    add_column :standpreds, :image_content_type, :string
    add_column :standpreds, :image_file_size, :integer
    add_column :standpreds, :image_updated_at, :datetime
  end

  def self.down
    remove_column :standpreds, :image_file_name
    remove_column :standpreds, :image_content_type
    remove_column :standpreds, :image_file_size
    remove_column :standpreds, :image_updated_at
  end
end
