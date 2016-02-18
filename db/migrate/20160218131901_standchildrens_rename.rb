class StandchildrensRename < ActiveRecord::Migration[5.0]
  def change
    rename_table :standchildrens, :standchils
  end
end
