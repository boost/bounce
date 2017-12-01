class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :winner
      t.references :loser

      t.timestamps
    end
  end
end
