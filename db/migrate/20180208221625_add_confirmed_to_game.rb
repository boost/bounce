class AddConfirmedToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :confirmed, :boolean
  end
end
