class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :max_member_count
      t.string :slogan
      t.string :winning_note
      t.string :losing_note

      t.timestamps
    end
  end
end
