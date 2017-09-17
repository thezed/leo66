class AddAbsolutePermalinkToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :absolute_permalink, :string
  end
end
