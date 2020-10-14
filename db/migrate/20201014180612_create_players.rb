class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :nickname
      t.string :expertise
      t.string :catchphrase

      t.timestamps
    end
  end
end
