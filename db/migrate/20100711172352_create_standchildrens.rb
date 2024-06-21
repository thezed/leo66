class CreateStandchildrens < ActiveRecord::Migration[4.2]
  def self.up
    create_table :standchildrens do |t|
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
    drop_table :standchildrens
  end
end
