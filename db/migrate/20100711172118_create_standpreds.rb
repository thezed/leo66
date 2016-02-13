class CreateStandpreds < ActiveRecord::Migration
  def self.up
    create_table :standpreds do |t|
      t.string :artikul
      t.integer :price
      t.integer :pricefigure
      t.string :size
      t.string :format
      t.string :quantity
      t.string :additional

      t.timestamps
    end
  end

  def self.down
    drop_table :standpreds
  end
end
