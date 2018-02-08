class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :name
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :image_url
      t.string :url

      t.timestamps
    end

    add_index :players, :provider
    add_index :players, :uid
    add_index :players, %i[provider uid], unique: true
  end
end
