class AddTriviaNightsWonToTeam < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :trivia_nights_won, :integer
  end
end
