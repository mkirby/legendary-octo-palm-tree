class TriviaSquadsController < ApplicationController

    def new
        @trivia_squad = TriviaSquad.new
        @recruiting_teams = Team.recruiting_teams
    end

    def create
        @trivia_squad = TriviaSquad.find_or_create_by(squad_params)
        if @trivia_squad.valid?
            redirect_to team_path(@trivia_squad.team)
        else
            flash[:errors] = @trivia_squad.errors.full_messages
            redirect_to new_trivia_squad_path
        end
    end

    def destroy
        @trivia_squad = TriviaSquad.find(params[:id])
        team = @trivia_squad.team
        @trivia_squad.destroy
        redirect_to team_path(team)
    end

    private

    def squad_params
        params.require(:trivia_squad).permit(:team_id, :player_id)
    end

end
