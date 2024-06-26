class CreatePrices < ActiveRecord::Migration[4.2]
  def self.up
    create_table :prices do |t|
      t.string :name
      t.integer :order
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
