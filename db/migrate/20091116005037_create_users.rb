class CreateUsers < ActiveRecord::Migration[4.2]
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :persistence_token
      t.string :crypted_password
      t.string :password_salt
      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
