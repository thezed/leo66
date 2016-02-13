class CreateLights < ActiveRecord::Migration
  def self.up
    create_table :lights do |t|
      t.string :artikul
      t.string :name
      t.integer :price
      t.string :size
      t.string :format
      t.string :quantity
      t.string :additional

      t.timestamps
    end
  end

  def self.down
    drop_table :lights
  end
end
