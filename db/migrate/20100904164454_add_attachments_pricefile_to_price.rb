class AddAttachmentsPricefileToPrice < ActiveRecord::Migration[4.2]
  def self.up
    add_column :prices, :pricefile_file_name, :string
    add_column :prices, :pricefile_content_type, :string
    add_column :prices, :pricefile_file_size, :integer
    add_column :prices, :pricefile_updated_at, :datetime
  end

  def self.down
    remove_column :prices, :pricefile_file_name
    remove_column :prices, :pricefile_content_type
    remove_column :prices, :pricefile_file_size
    remove_column :prices, :pricefile_updated_at
  end
end
