class AddPicturesToStandadditionals < ActiveRecord::Migration[4.2]
    def self.up
      add_column :standadditionals, :image_file_name, :string
      add_column :standadditionals, :image_content_type, :string
      add_column :standadditionals, :image_file_size, :integer
      add_column :standadditionals, :image_updated_at, :datetime
    end

    def self.down
      remove_column :standadditionals, :image_file_name
      remove_column :standadditionals, :image_content_type
      remove_column :standadditionals, :image_file_size
      remove_column :standadditionals, :image_updated_at
    end
  end
