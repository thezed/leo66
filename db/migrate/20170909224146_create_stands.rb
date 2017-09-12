class CreateStands < ActiveRecord::Migration[5.1]
  def change
    create_table :stands do |t|
      t.string :name
      t.string :artikul
      t.integer :price
      t.integer :pricefigure
      t.string :size
      t.string :format
      t.string :quantity
      t.string :additional
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.references :category, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
