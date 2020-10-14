class AddRecruitingToTeam < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :recruiting, :boolean
  end
end
